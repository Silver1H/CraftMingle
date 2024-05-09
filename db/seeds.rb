# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
Course.destroy_all
User.destroy_all


user1 = User.create!(email: 'test@email.com', nickname: 'user1', password: '123456')
user2 = User.create!(email: 'another_test@anotheremail.com', nickname: 'user2', password: '123456')

painting = Course.new(subject: 'Painting', background_image_url: "https://www.pictoclub.com/wp-content/uploads/2021/09/painting-brushes-2048x1365.jpg")
pottery = Course.new(subject: 'Pottery', background_image_url: "https://media.istockphoto.com/id/639487044/photo/hands-of-a-potter-creating-an-earthen-jar.jpg?s=2048x2048&w=is&k=20&c=ltSwnfvo2FvRrgaOeHcE2GUJ4Y4AszFalt01BeUlMos=")
cupcake_design = Course.new(subject: 'Cupcake Design', background_image_url: "https://www.bostongirlbakes.com/wp-content/uploads/2016/04/MG_1280-2.jpg")
wood_carving = Course.new(subject: 'Wood Carving', background_image_url: "https://i0.wp.com/wood-create.com/wp-content/uploads/2021/04/wood-carving-1.png?resize=683%2C1024&ssl=1")
carpentry = Course.new(subject: 'Carpentry', background_image_url: "https://images.squarespace-cdn.com/content/v1/5f4fdc32f4dacb6dc0cac51c/1620947771107-XEQTFXQ8PLUMWWYYF9OQ/carpentry+image.jpg?format=1500w")

painting.user = user1
painting.save

pottery.user = user2
pottery.save

cupcake_design.user = user2
cupcake_design.save

wood_carving.user = user1
wood_carving.save

carpentry.user = user1
carpentry.save
# #   end

# Course.destroy_all
# User.destroy_all

# john = User.create(email: "john@example.com", password: "123456")
# doe = User.create(email: "doe@example.com", password: "123456")

# p john
# p doe
# # Course.create!(subject: "Painting", user: user)

# # Course.create!(subject: "Cupcake Design", user: user1)
