class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :shop, foreign_key: true
      t.text :content
      t.integer :hot_rank, default: 0, null: false

      t.timestamps
    end
  end
end
