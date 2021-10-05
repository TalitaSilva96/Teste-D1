Dado("que acesso a página da loja") do
  visit "https://www.casaevideo.com.br"
end

Quando("realizo minha busca com: {string}") do |ventilador|
  find("input[name='q']").set ventilador
  find(".btn-buscar").click
end

Quando("escolho o produto e adiciono a sacola") do
  find("ul.neemu-products-container.nm-view-type-grid > li:nth-child(1) > div.nm-product-img-container > a.nm-product-img-link").click
  find(:xpath, "(//a[text()=\"Adicionar ao carrinho \"])[3]").click
  find(:xpath, "(//a[text()='Fechar Pedido'])[1]").click
end

Então("devo ser redirecionado para o meu carrinho") do
  expect(page).to have_text "Meu Carrinho"
  url_carrinho = current_url()
  expect(url_carrinho).to eq("https://www.casaevideo.com.br/checkout/#/cart")
end

Quando("calculo o frete digitando o cep: {string}") do |cep|
  find("button[id='shipping-calculate-link']").click
  find("input[id='ship-postalCode']").set "23060-710"
  find("a[id='cart-to-orderform']").click
end

Então("devo ser redirecionado para finalizar a compra") do
  expect(page).to have_text "Finalizar compra"
  url_email = current_url()
  expect(url_email).to eq("https://www.casaevideo.com.br/checkout/#/email")
end

Quando("realizo minha busca na página inicial") do
  find("img[id='destaqueHome_05']").click
end

Quando("escolho um novo produto") do
  find("a[id='cart-choose-more-products']").click
end

Quando("escolho mais um produto") do
  find("ul.neemu-products-container.nm-view-type-grid > li:nth-child(2) > div.nm-product-img-container > a.nm-product-img-link").click
end

Quando("removo um dos produtos e fecho meu pedido") do
  find("a[id='item-remove-41950']").click
  find("a[id='cart-to-orderform']").click
end
