# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Administrator.create(username: "admin", password: "password")

puts "[db:seed] Seeding database with products..."
Product.create(name:         "ChocoBanana Especial", price: BigDecimal.new(175),
               description:  "Delicioso platano acompañado de nuestra salsa de chocolate especial con crema batida. Servido con frutos de temporada a un lado",
               product_type: :dessert,
               image:        File.new("#{Rails.root}/app/assets/images/ga1.jpg"))

Product.create(name:         "Salmon Ahumado",
               price:        BigDecimal.new(275),
               product_type: :meal,
               description:  "Salmon adobado ahumado acompañado de ensalada con un toque de aceite de oliva.",
               image:        File.new("#{Rails.root}/app/assets/images/ga2.jpg"))

Product.create(name:         "Combinación Oriental",
               price:        BigDecimal.new(75),
               product_type: :meal,
               description:  "Carne a la plancha, carna adobada,  queso, tomate, aguacate y mayonesa.",
               image:        File.new("#{Rails.root}/app/assets/images/ga3.jpg"))
Product.create(name:         "Spaghetti",
               price:        BigDecimal.new(80),
               product_type: :meal,
               description:  "Carne a la plancha, tocino, jamon, pepperoni,  queso, tomate, aguacate y mayonesa.",
               image:        File.new("#{Rails.root}/app/assets/images/ga4.jpg"))
Product.create(name:         "Pizza Artesanal a la leña",
               price:        BigDecimal.new(80),
               product_type: :meal,
               description:  "Pollo buffalo, queso, tomate, aguacate y mayonesa.",
               image:        File.new("#{Rails.root}/app/assets/images/ga5.jpg"))
Product.create(name:         "Brochetas veganas",
               price:        BigDecimal.new(80),
               product_type: :meal,
               description:  "Piezas de zanahoria, cebolla y calabaza cuidadosamente empaladas sobre el grill",
               image:        File.new("#{Rails.root}/app/assets/images/ga6.jpg"))
Product.create(name:         "Postrecillo",
               price:        BigDecimal.new(65),
               product_type: :dessert,
               description:  "Pieza de pan de papaya organica servida con frutos rojos de temporada y leche condensada",
               image:        File.new("#{Rails.root}/app/assets/images/ga7.jpg"))
Product.create(name:         "Sorbete de cacao",
               price:        BigDecimal.new(65),
               product_type: :dessert,
               description:  "Deliciosa combinación de chocolate tin larin, malvaviscos y café persa, coronado con crema bátida y un pitillo crujiente",
               image:        File.new("#{Rails.root}/app/assets/images/ga8.jpg"))
Product.create(name:         "Tabla del sabor",
               price:        BigDecimal.new(65),
               product_type: :meal,
               description:  "Exquisito sandwich de huevito acompañado de cilantro tibetano y patatas francesas, servido sobre una tabla de madera de roble.",
               image:        File.new("#{Rails.root}/app/assets/images/ga9.jpg"))
Product.create(name:         "Ensalada Kentucky",
               price:        BigDecimal.new(65),
               product_type: :meal,
               description:  "Mezcla de finas rebanadas de lechuga y elegante pollo",
               image:        File.new("#{Rails.root}/app/assets/images/ga10.jpg"))

puts "[db:seed] Done!"

Customer.create(phone_number: "6623-10-20-60", name: "Juanito", address: "Calle Falsa 123")
Customer.create(phone_number: "6623-10-20-61", name: "Lucia", address: "Calle Falsa 123")
Customer.create(phone_number: "6623-11-20-62", name: "Arturo", address: "Calle Falsa 123")
Customer.create(phone_number: "6623-10-20-63", name: "Miguel", address: "Calle Falsa 123")
