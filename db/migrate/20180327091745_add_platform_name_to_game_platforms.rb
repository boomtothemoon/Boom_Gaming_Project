class AddPlatformNameToGamePlatforms < ActiveRecord::Migration[5.1]
  def change
    add_column :game_platforms, :platform_name, :string
  end
end
