# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



supl = Supplier.create(company: "Carrot Puppies")

carrot = Carrot.create(name: "Orange Carrot", description: "This is perfect for Bunnies", price: 3.75, stock: 20, supplier: supl)

user = User.create(name: "Guilherme", email: "silva.guilhermee7&@gmail.com")

order = Order.create(user: user, payment_method: 2, status: "PENDENTE", total: 47.50)

item = Carting.create(carrot: carrot, quantity: 12, total: 42.0, order: order)