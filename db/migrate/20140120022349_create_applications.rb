class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
    	t.belongs_to :developer
    	t.string :name
    	t.string :key
      t.timestamps
    end
    add_index :applications, :developer_id
  end
end
