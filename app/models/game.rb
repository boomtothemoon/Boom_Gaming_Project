class Game < ApplicationRecord
 belongs_to :platform
  belongs_to :genre
  # has_many :GamePlatforms
  # has_many :Platforms, through: :GamePlatforms
  mount_uploader :image, ImageUploader
  validates :name, presence: true
end
