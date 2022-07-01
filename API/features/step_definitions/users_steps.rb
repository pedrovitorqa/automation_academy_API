Quando('faço uma requisição POST para cadastrar usuario') do
    @payload_users = build(:user).cadastro_user
    @request_users = users.post_users(@payload_users)
end
  
Então('o serviço Users deve responder com {int}') do |status_code|
    expect(@request_users.code).to eq status_code
end
    
Quando('faço uma requisição POST para logar usuario') do
    @payload_login_users = build(:user_logar).logar_user
    @request_users = users.post_login_users(@payload_login_users)
end

Então('vai receber uma mensagem no json de sucesso') do
  result = @request_users["message"].upcase.include? "SUCESSO"
  expect(result).to be true
end
