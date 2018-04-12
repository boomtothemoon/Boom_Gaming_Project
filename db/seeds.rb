# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
require 'faker'

Platform.delete_all
Game.delete_all
Genre.delete_all



csv_wards = File.read(Rails.root.join('db', 'game.csv'))
csv = CSV.parse(csv_wards, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|


    t = Genre.new
    t.name = row[3]
    t.save

    y = Platform.new
    y.name = row[1]
    y.save


    numberFaker = (rand() * 100).round(2)
    puts "#{numberFaker}.........  generated"
    

    x = Game.new
    x.name = row[0]
    x.year = row[2]
    x.publisher = row[4]
    x.developer = row[5]
    x.rating = row[6]
    x.price = numberFaker
    x.platform_id = y.id
    x.platform_name = y.name
    x.genre_id = t.id
    x.save
    puts "#{x.name}.#{t.name}.........  saved"

   # z = GamePlatform.new
   # z.game_name = x.name
    #z.platform_name = y.name
   # z.platform_id = y.id
   # z.game_id = x.id


end