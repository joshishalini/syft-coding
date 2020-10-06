class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
			t.string :state
    	t.decimal :total, precision: 8, scale: 2
      t.timestamps
    end
  end
end
