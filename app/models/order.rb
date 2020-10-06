class Order < ApplicationRecord

	has_many :line_items, dependent: :destroy
	accepts_nested_attributes_for :line_items, allow_destroy: true

	after_save :update_order

	def update_order
		unless total.try(:state) == "COMPLETED"
			total = line_items.sum(:price)
			total = total - (total * 10/100) if total > 60 # total price is greater than 60 apply 10% discount
			total = total - 8.50 if promotion_on_chair self # promotion on chair applied 
			update(total: total, state: 'NEW') unless total == self.total# updating total price
		end
	end

	def promotion_on_chair order
		product = Product.find_by_name('Lavender heart') # find out promotion chair
		return order.line_items.where(product_id: product.id).sum(:quantity) >= 2 # quantity is more than 2 for the Cheapest chair
	end

	def total_without_discount
		line_items.sum(:price)
	end

	def discount_price
		total_without_discount - (total.present? ? total : 0)
	end

end
