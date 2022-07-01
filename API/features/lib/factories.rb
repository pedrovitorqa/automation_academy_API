require 'faker'
require_relative '../models/users_model'
require_relative '../models/products_model'

nomedousuario = Faker::Name.name
loginusuario =  Faker::Name.name

FactoryBot.define do 
    factory :user, class: UsersModel do 
      user_name { nomedousuario }
      user_login { loginusuario }
      password  { 123456 }
    end

    factory :user_logar, class: UsersModel do 
      user_login { loginusuario } 
      password  { 123456 }
     end

     factory :product, class: ProductModel do 
      product_name { Faker::Name.name } 
      product_valor  { Faker::Number.number(digits: 4) }
      
      product_cor do
        [
          Faker::Color.color_name,  Faker::Color.color_name
        ]
      end

      componentes do
        [
          { "componentenome": Faker::Name.name,
            "componentequantidade":  Faker::Number.number(digits: 4)
          },
          
          {
            "componentenome": Faker::Name.name,
            "componentequantidade":  Faker::Number.number(digits: 4)
          },
        ]
       end
    end
end

    
