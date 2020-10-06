class ProductsController < ApplicationController

	def index
		@products = Product.all
		@order = Order.new
	end

	def add_product
		@product = Product.find(params[:product_id])
		@quantity = params[:quantity]
		respond_to do |format|               
			format.js
		end
	end

end
