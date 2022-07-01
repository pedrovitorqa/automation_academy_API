class ProductModel
    attr_accessor :product_name, :product_valor, :product_cor, :componentes
    
    def cadastro_product
        {
            produtonome: @product_name,
            produtovalor: @product_valor,
            produtocores: @product_cor,
            componentes: @componentes   
        }
    end
end