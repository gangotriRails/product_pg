class OrdersController < ApplicationController

    def index
    end

    def show
    end

    def create
        @order = Order.new(amount_cents: rand(1000..10000), payment_method: 'credit_card')
        @order.user_id = 1
        # @order.cart_id = session[:cart_id]

        if @order.save
        OrderMailer.with(order: @order).new_order_email.deliver_later
          render json: { order: @order, payment: @order.payment }, status: :created
        else
          render json: @response.errors, status: :unprocessable_entity
        end
    end
end
