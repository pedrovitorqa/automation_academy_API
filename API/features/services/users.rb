module Rest
    class Users
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri 'http://165.227.93.41/lojinha'

        def post_users(user)
            self.class.post('/usuario', body: user.to_json)
        end

        def post_login_users(user)
            self.class.post('/login', body: user.to_json)
        end
    end
end