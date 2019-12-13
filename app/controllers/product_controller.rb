class ProductController < ApplicationController

    def edit

    end

    def update
        @product = Product.find(params[:id])
        @product.update(product_params)    

        respond_to do |format|
            format.html
            format.js {}
        end
    end

    private

    def product_params
        params.require(:product).permit(:code, :quantity, :price, :observation)
    end     

end
