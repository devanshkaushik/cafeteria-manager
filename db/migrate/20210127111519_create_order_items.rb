class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.bigint :order_id
      t.bigint :menu_item_id
      t.string :menu_item_name
      t.decimal :menu_item_price, :precision => 12, :scale => 2

      t.timestamps
    end
  end
end
