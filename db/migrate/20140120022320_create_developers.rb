class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
    	t.string :username
    	t.string :password_digest
      t.timestamps
    end
    add_index :developers, :username, unique: true
  end
end
