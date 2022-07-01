#language: pt

@users
Funcionalidade: Users
    validar operações da API Users

    @post_users
    Cenário: Validar cadastro POST API 
        Quando faço uma requisição POST para cadastrar usuario     
        Então o serviço Users deve responder com 201
        E vai receber uma mensagem no json de sucesso

    @postLogar_users
     Cenário: Validar logar POST API 
        Quando faço uma requisição POST para logar usuario   
        Então o serviço Users deve responder com 200
        E vai receber uma mensagem no json de sucesso