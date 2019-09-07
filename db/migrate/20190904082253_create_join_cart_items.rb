class CreateJoinCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :join_cart_items do |t|
      t.belongs_to :cart, foreign_key: true
    	t.belongs_to :item, foreign_key: true
      t.timestamps
    end
  end
end
