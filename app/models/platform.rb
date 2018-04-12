class Platform < ApplicationRecord
     has_many :games
    # has_many :GamePlatforms
    # has_many :Games, through: :GamePlatforms
    validates :name, presence: true
end
