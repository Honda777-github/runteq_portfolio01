class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  authenticates_with_sorcery!
  # mount_uploader :avatar, AvatarUploader

  has_many :comments, dependent: :destroy

  def own?(object)
    id == object&.user_id
  end
end
