class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :year
      t.string :publisher
      t.string :developer
      t.string :rating
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
