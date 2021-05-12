class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :tweets, dependent: :destroy
  has_many :friendships
  has_many :friends, through: :friendships
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   def except_current_user(users)
     users.reject { |user| user.id == self.id }
   end

   def not_friends_with?(id_of_friend)
     !self.friends.where(id: id_of_friend).exists?
   end
   
end
