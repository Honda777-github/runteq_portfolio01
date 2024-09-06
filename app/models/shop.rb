class Shop < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    ["address", "category", "created_at", "description", "hot_rank", "id", "id_value", "img", "name", "rating", "update_at", "updated_at"]
  end

end
