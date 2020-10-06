class OrdersController < ApplicationController

	before_action :set_order, only: [:edit, :update, :show, :complete_order]

	def create
		@order = Order.new(order_params)
		if @order.save
			redirect_to order_path(@order)
		else
			redirect_to root_path
		end
	end

	def edit
		@products = Product.all
	end

	def update
		if @order.update(order_params)
			redirect_to order_path(@order)
		else
			render :edit
		end
	end

	def complete_order
		if @order.update(state: "COMPLETED")
			redirect_to root_path
		end
	end

	private

		def order_params
			params.require(:order).permit(:id, :state, :total, line_items_attributes:[:id, :product_id, :order_id, :quantity, :price])
		end

		def set_order
			@order = Order.find(params[:id] || params[:order_id])
		end
end
