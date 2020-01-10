class OrderController < ApplicationController
    skip_before_action :verify_authenticity_token


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

    def show
        @order = Order.find(params[:id])

        respond_to do |format|
            format.json {render json: @order.to_json(:include => :products)}
        end
    end

    def create
        @order = Order.new(order_params)
        p "**********************"
        p order_params.to_h
        p "*********************"
        p params[:products]
        #@order.products << params[:products]


        respond_to do |format|
            if @order.save
                format.json {render json: @order.to_json, status: 'OK' }                
            else 
                format.json {render json: @order.errors, status: 'ERROR'}
            end
        end
    end

    private

    def order_params        
        params.require(:order).permit(:id, :created_at, :updated_at, :company_name, :company_document, :products_attributes => [:id, :created_at, :updated_at, :order_id, :code, :description, :quantity, :price, :observation] )
    end    
end
