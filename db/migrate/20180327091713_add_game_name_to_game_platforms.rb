class AddGameNameToGamePlatforms < ActiveRecord::Migration[5.1]
  def change
    add_column :game_platforms, :game_name, :string
  end
end
