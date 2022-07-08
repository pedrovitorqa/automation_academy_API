#language: pt

  @products
  Funcionalidade: Products
     validar operações da API Products

    @post_products
    Cenário: Validar cadastro de produto POST API 
        Quando faço uma requisição POST para cadastrar um produto    
        Então o serviço Products deve responder com 201
        E vai receber uma mensagem no json de produto com sucesso 

    @get_products
     Cenário: Validar busca de produtos GET API 
        Quando faço uma requisição GET para retornar os produtos   
        Então o serviço Products deve responder com 200
        E vai receber uma mensagem no json de produto com sucesso