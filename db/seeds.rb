# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.find_or_initialize_by(email: "andres@gmail.com")
user.password = "123456"
user.password_confirmation = "123456"

restaurant1 = user.restaurants.find_or_initialize_by(name: "Isolina", address: "Av. San Martín 101, Barranco")
restaurant2 = user.restaurants.find_or_initialize_by(name: "Maido", address: "Calle San Martín 399, Miraflores")
restaurant3 = user.restaurants.find_or_initialize_by(name: "Statera", address: "Av. Mariscal La Mar 463, Miraflores")
restaurant4 = user.restaurants.find_or_initialize_by(name: "Mayta", address: "Av. Mariscal La Mar 1285, Miraflores")
restaurant5 = user.restaurants.find_or_initialize_by(name: "Pescados Capitales", address: "Av. Mariscal La Mar 1337, Miraflores")
restaurant6 = user.restaurants.find_or_initialize_by(name: "Panchita", address: "Calle 2 de Mayo 298, Miraflores")
restaurant7 = user.restaurants.find_or_initialize_by(name: "Nanka", address: "Calle Manuel Bañón 260, San Isidro")
restaurant8 = user.restaurants.find_or_initialize_by(name: "Al Toke Pez", address: "Av. Angamos Este 886, Surquillo")
restaurant9 = user.restaurants.find_or_initialize_by(name: "Bar Queirolo", address: "Jr. Camana 900, Cercado de Lima")
restaurant10 = user.restaurants.find_or_initialize_by(name: "Carnal Prime Steakhouse", address: "Calle Elias Aguirre 698, Miraflores")

user.save

user2 = User.find_or_initialize_by(email: 'juan@gmail.com')
user2.password = '123456'
user2.password_confirmation = '123456'

restaurant1 = user2.restaurants.find_or_initialize_by(name: "La Mar Cevichería Peruana", address: "Av. Mariscal La Mar 770, Miraflores")
restaurant2 = user2.restaurants.find_or_initialize_by(name: "Central", address: "Av. Pedro de Osma 301, Barranco")
restaurant3 = user2.restaurants.find_or_initialize_by(name: "Chifa Unión", address: "Jr. Unión 126, Barranco")
restaurant4 = user2.restaurants.find_or_initialize_by(name: "Astrid & Gastón", address: "Av. Paz Soldán 290, San Isidro")

user2.save
