class ProductController < ApplicationController

    def edit

    end

    def update
        @product = Product.find(params[:id])
        @product.update(product_params)    
    end

    private

    def product_params
        params.require(:product).permit(:code, :description, :quantity, :price, :observation)
    end     

end
