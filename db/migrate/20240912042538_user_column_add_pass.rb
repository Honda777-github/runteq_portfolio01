class UserColumnAddPass < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :password_confirmation, :string
  end
end
