# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

processor_category = Category.create(
  name: 'Processors'
)

def create_product(
  name:,
  price:,
  stock:,
  description:,
  category:,
  image_path: 'public/default_product.png'
)
  p = Product.new(
    name: name,
    price: price,
    stock: stock,
    description: description,
    category: category
  )

  f = File.open(image_path)
  p.product_image.attach(
    io: f,
    filename: File.basename(f.path)
  )
  p.save
end

create_product(
  name: 'Intel Core i7-9700KF',
  price: '31500',
  stock: 13,
  description: 'Frecuencia 3600 MHz',
  category: processor_category
)

create_product(
  name: 'Intel Core i9-10850K',
  price: '480900',
  stock: 8,
  description: 'Frecuencia 3600 MHz',
  category: processor_category
)

create_product(
  name: 'AMD Ryzen 5 5600X',
  price: '332990',
  stock: 6,
  description: 'Frecuencia 3700 MHz',
  category: processor_category
)
