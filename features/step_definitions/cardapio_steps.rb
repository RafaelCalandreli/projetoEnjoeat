Dado("que acesso a lista de restaurantes") do
    visit "/restaurants"
end

Quando("eu escolho o restaurante {string}") do |restaurante|
    find('.restaurant-item', text: restaurante.upcase).click
end
  
Então("vejo os seguintes items disponíveis no cardapio:") do |table|
    items = all('.menu-item-info-box')
    
    produto_data = table.hashes

    produto_data.each_with_index do |value, index|
        expect(items[index]).to have_text value['produto'].upcase
        expect(items[index]).to have_text value['descricao']
        expect(items[index]).to have_text value['preco']
    end
end
  
Então("eu vejo as seguintes informacoes adicionais:") do |table|
    infos = table.rows_hash
    detail = find("#detail")
    expect(detail).to have_text infos["categoria"]
    expect(detail).to have_text infos["descricao"]
    expect(detail).to have_text infos["horarios"]
end