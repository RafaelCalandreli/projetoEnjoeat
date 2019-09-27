#language:pt

Funcionalidade: Cardapio
    Para que eu possa decidir o que pretendo comer
    Sendo um usuário que escolheu um restaurante
    Posso acessar o Cardapio

    @cardapio    
    Cenário: Produto

        Dado que acesso a lista de restaurantes
        Quando eu escolho um restaurante "Burger House"
        Então vejo os seguintes items disponíveis no cardapio:
            |produto         | descricao                      | preco     |
            |Classic Burger | O clássico. Não tem como errar. | R$ 18,50  | 
            |BATATAS FRITAS  |Batatas fritas crocantes        | R$ 5,50   |
            |REFRIGERANTE    |O refri mais gelado da cidade.  | R$ 4,50   |