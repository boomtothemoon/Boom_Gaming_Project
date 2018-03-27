class AddPlatformToGames < ActiveRecord::Migration[5.1]
  def change
    add_reference :games, :platform, foreign_key: true
  end
end
