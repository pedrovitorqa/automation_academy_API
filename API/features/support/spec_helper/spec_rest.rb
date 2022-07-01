module REST
    def users
        Rest::Users.new
    end

    def products
        Rest::Products.new
    end
end