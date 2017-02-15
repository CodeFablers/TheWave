class CreateFolders < ActiveRecord::Migration[5.0]
  def change
    create_table :folders do |t|
      t.integer :library_id
      t.integer :parent_id
      t.string  :name
      t.timestamps
    end
  end
end
