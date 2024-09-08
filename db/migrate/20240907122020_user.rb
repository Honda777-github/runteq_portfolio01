class User < ActiveRecord::Migration[7.2]
  def change
    remove_column :users, :encrypted_password, :string
    remove_column :users, :reset_password_token, :string
    remove_column :users, :reset_password_sent_at, :datetime
    remove_column :users, :remember_created_at, :datetime

    add_column :users, :crypted_password, :string
    
    add_column :users, :salt, :string

  end
end
