class CreateShops < ActiveRecord::Migration[7.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.text :description
      t.float :rating
      t.float :hot_rank
      t.string :img
      t.string :category
      t.date :update_at

      t.timestamps
    end
  end
end
