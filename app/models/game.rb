class Game < ApplicationRecord
  belongs_to :platform
  belongs_to :genre
  validates :name, presence: true
end
