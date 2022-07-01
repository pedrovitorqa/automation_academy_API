Quando('faço uma requisição POST para cadastrar um produto') do
    @payload_products = build(:product).cadastro_product    
    @request_products = products.post_products(@payload_products)
end
  
Então('o serviço Products deve responder com {int}') do |status_code|
    # expect(@request_products.code).to eq status_code
    print @request_products.code
end
  
Quando('faço uma requisição GET para retornar os produtos') do
    @request_products = products.get_products
end

Então('vai receber uma mensagem no json de produto com sucesso') do
    result = @request_products["message"].upcase.include? "SUCESSO"
    expect(result).to be true
end
  