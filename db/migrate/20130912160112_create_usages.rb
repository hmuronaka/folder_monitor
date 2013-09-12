class CreateUsages < ActiveRecord::Migration
  def change
    create_table :usages do |t|
      t.references :folder
      t.integer :file_size
      t.integer :file_count

      t.timestamps
    end
    add_index :usages, :folder_id
  end
end
