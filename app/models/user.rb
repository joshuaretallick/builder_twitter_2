class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :tweets, dependent: :destroy
  has_many :friendships
  has_many :friends, through: :friendships
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
