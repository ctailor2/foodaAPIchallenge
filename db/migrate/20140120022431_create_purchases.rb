class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
    	t.belongs_to :user
    	t.belongs_to :dish
      t.timestamps
    end
    add_index :purchases, :user_id
    add_index :purchases, :dish_id
  end
end
