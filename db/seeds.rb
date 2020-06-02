# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Offer.destroy_all
offer = Offer.create!(title: 'DJ Serpent', description: 'Perfect DJ for your barmitzva and et enterrement de vie de jeune fille', price_per_day: 19)
offer1 = Offer.create!(title: 'Magic System', description: 'Zouglou Dance et enterrement de vie de jeune fille', price_per_day: 30)
offer2 = Offer.create!(title: 'DJ 80', description: 'Année 80 en perspective', price_per_day: 10)
offer3 = Offer.create!(title: 'DJ cut killer', description: 'La zone en personne', price_per_day: 35)
