# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all
Project.create!([

{name: "Android task monitoring",
description: "This project is exclusively designed to simplify the tracking and monitoring of day-to-day activities of the busy modern life.",
price: 20,},
{name: "Fingerprint-based ATM system",
description: "This project is a desktop application that uses the fingerprint of users for authentication.",
price: 40,},
{name: "Advanced employee management system",
description: "Usually, large companies and organizations have a vast army of human resources working under them.",
price: 10,},
{name: "AI shopping system",
description: "As the name suggests, the AI multi-agent shopping system is a shopping assistant, more like a recommendation engine.",
price: 30,},
{name: "Shopify Store",
description: "This project is exclusively designed to simplify the tracking and monitoring of day-to-day activities of the busy modern life.",
price: 20,},
])