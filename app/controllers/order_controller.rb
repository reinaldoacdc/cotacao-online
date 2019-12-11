class OrderController < ApplicationController


    def index
        @orders = Order.all()
    end

    def edit
        @order = Order.find(params[:id])
    end

    def update
        @order = Order.find(params[:id])
        @order.update(order_params)
    end



    private

    def order_params
        params.require(:property).permit(:company_name, :company_document)
    end    
end
