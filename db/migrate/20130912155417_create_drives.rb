class CreateDrives < ActiveRecord::Migration
  def change
    create_table :drives do |t|
      t.string :name
      t.integer :total_size
      t.integer :current_size

      t.timestamps
    end
  end
end
