# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

def create_category
  Category.create(title: Faker::Restaurant.unique.name)
end

def create_product(category_id)
  Product.create(
    title: Faker::Food.unique.dish,
    description: Faker::Food.unique.description,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    category_id: category_id
  )
end

category1 = create_category
5.times { create_product(category1.id) }

category2 = create_category
2.times { create_product(category2.id) }

category3 = create_category
3.times { create_product(category3.id) }
