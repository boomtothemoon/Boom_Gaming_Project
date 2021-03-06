class CreateGamePlatforms < ActiveRecord::Migration[5.1]
  def change
    create_table :game_platforms do |t|
      t.string :game_name
      t.string :platform_name
      t.references :platform, foreign_key: true
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
