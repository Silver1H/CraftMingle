# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user1 = User.create!(email: 'test@email.com', password: '123456')
user2 = User.create!(email: 'another_test@anotheremail.com', password: '123456')

course1 = Course.create!(subject: 'Maths', user_id: user1.id)
course2 = Course.create!(subject: 'Chemistry', user_id: user1.id)
course3 = Course.create!(subject: 'English', user_id: user1.id)
course4 = Course.create!(subject: 'Physics', user_id: user1.id)
course5 = Course.create!(subject: 'Arabic', user_id: user1.id)
