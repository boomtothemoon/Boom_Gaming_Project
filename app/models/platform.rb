class Platform < ApplicationRecord
    has_many :gameplatforms
    has_many :games, through: :gameplatforms
    validates :name, presence: true
end
