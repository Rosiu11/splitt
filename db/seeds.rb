# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipient.destroy_all
Bill.destroy_all 

bill2 = Bill.create(name:"Pizza", price: 100, bank_account:"213123", description: "Example")
bill3 = Bill.create(name:"Hamburger", price: 16 , bank_account:"213123", description: "Example")
bill4 =  Bill.create(name:"Lody", price: 50 , bank_account:"214123", description: "Example")

bill2.recipients.create(name: "Adam", email: "adamchu@wp.pl")
bill2.recipients.create(name: "Hehłacz", email: "asdaschu@wp.pl")

bill3.recipients.create(name: "Maciek", email: "Macichu@wp.pl")
bill3.recipients.create(name: "Umbrella", email: "Masdasdchu@wp.pl")

bill4.recipients.create(name: "Zbychu", email: "zbichu@wp.pl")
bill4.recipients.create(name: "Ggorz", email: "asdau@wp.pl")
puts 'Bills created'