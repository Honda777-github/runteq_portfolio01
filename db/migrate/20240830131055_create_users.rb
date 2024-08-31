class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name,null: false
      t.string :password
      t.integer :gender
      t.string :email
      t.integer :age
      t.datetime :update_at
      t.timestamps
    end
  end
end
