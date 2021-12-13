# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
    Edificio.create(nombre: Faker::Company.name, direccion: Faker::Address.street_address, ciudad: Faker::Address.city)
end

10.times do |i|
    Departamento.create(numero: Faker::Number.number(digits: 3), edificio: Edificio.all.sample)
end