#language: pt

Funcionalidade: Comprar de Eletrodomésticos
    Sendo um visitante do site Casa e Video
    Quero fazer a minha compra
    Para que eu possa utilizar novos eletrodomésticos

    @Cena1
    Cenario: Compra
        Dado que acesso a página da loja
        Quando realizo minha busca com: "Ventilador"
            E escolho o produto e adiciono a sacola
        Então devo ser redirecionado para o meu carrinho

    @Cena2
    Cenario: Calcular frete e finalizar compra
        Dado que acesso a página da loja
        Quando realizo minha busca com: "liquidificador"
            E escolho o produto e adiciono a sacola
            E calculo o frete digitando o cep: "23060-710"
        Então devo ser redirecionado para finalizar a compra

    @Cena3
    Cenario: Duas compras, pesquisa no site e remoção de um dos produtos
        Dado que acesso a página da loja
        Quando realizo minha busca na página inicial
            E escolho o produto e adiciono a sacola
            E escolho um novo produto
            E realizo minha busca com: "microondas"
            E escolho mais um produto
            E realizo minha busca com: "centrífuga"
            E escolho o produto e adiciono a sacola
            E removo um dos produtos e fecho meu pedido
        Então devo ser redirecionado para finalizar a compra


