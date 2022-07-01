class UsersModel
    attr_accessor :user_name, :user_login, :password
    
    def cadastro_user
        {
            usuarionome: @user_name,
            usuariologin: @user_login,
            usuariosenha: @password  
        }
    end

    def logar_user
        {   
            usuariologin: @user_login,
            usuariosenha: @password   
        }
    end
end