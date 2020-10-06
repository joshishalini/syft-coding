class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
			t.integer :order_id
    	t.integer :product_id
	    t.integer :quantity
	    t.decimal :price, precision: 8, scale: 2
      t.timestamps
    end
  end
end