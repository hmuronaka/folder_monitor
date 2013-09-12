class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.string :name
      t.string :path
      t.references :drive

      t.timestamps
    end
    add_index :folders, :drive_id
  end
end
