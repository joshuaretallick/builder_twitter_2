class Tweet < ApplicationRecord
  validates :content, presence: true, length: { minimum: 1, maximum: 140 }
  mount_uploader :picture, PictureUploader
  has_many :comments
end
