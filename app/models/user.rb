# User model is user model, nothing more
class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :own_library, class_name: 'Library', foreign_key: :owner_id,
                        inverse_of: :owner
end
