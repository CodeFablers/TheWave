class CreateCloudFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :cloud_files do |t|
      t.integer :library_id
      t.integer :folder_id
      t.string  :name
      t.string  :file_path
      t.timestamps
    end
  end
end
