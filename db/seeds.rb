# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
restaurants = [{name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0263532123", category: "italien"},
  {name: "Xi's Restaurant", address: "7 Boundary St, London E2 7JE", phone_number: "0263532123", category: "chinese"},
  {name: "Itadakimasai", address: "7 Boundary St, London E2 7JE", phone_number: "0263532123", category: "japanese"},
  {name: "Belgian Restaurant", address: "7 Boundary St, London E2 7JE", phone_number: "0263532123", category: "belgian"},
  {name: "Resto", address: "7 Boundary St, London E2 7JE", phone_number: "0263532123", category: "french"}]
  restaurants.each do |rest|
    restaurant = Restaurant.create(rest)
    restaurant.save
  end
