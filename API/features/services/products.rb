module Rest
    class Products
        include HTTParty
    
        headers 'Content-Type' => 'application/json'
        headers 'token' => "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvaWQiOiIxMjY4NCIsInVzdWFyaW9sb2dpbiI6InBlZHJvcWEuZmFrZSIsInVzdWFyaW9ub21lIjoiUGVkcm8gSG9ub3JpbyBmYWtlIn0.kkcM2AjrHaDj0Xv78cp4niCUFF4wjLIDDu9BbT8nV4U"
        base_uri 'http://165.227.93.41/lojinha'

        def post_products(product)
            self.class.post('/produto', body: product.to_json)
        end

        def get_products
            self.class.get('/produto')
        end
    end
end