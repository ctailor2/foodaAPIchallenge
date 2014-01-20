class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
    	t.belongs_to :restaurant
    	t.string :name
    	t.string :description
      t.timestamps
    end
    add_index :dishes, :restaurant_id
  end
end
