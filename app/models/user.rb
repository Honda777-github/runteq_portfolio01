class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  authenticates_with_sorcery!
  # mount_uploader :avatar, AvatarUploader

  has_many :comments, dependent: :destroy

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  # validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  # validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  # validates :reset_password_token, uniqueness: true, allow_nil: true

  # validates :first_name, presence: true, length: { maximum: 255 }
  # validates :last_name, presence: true, length: { maximum: 255 }
  validates :email, presence: true
  validates :email, uniqueness: true



  def own?(object)
    id == object&.user_id
  end
end
