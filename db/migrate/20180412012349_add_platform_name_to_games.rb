class AddPlatformNameToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :platform_name, :string
  end
end
