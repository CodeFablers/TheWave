class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.string :login
      ## Database authenticatable
      t.string :email,              null: false, default: ''
      t.string :encrypted_password, null: false, default: ''

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps null: false
    end
  end

  def down
    drop_table :users
  end
end
