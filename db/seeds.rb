# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Category.destroy_all
Message.destroy_all

user1 = User.create(username: 'matt', bio: 'bio1')
user2 = User.create(username: 'sam', bio: 'bio2')

cat1 = Category.create(title: 'title1', user: user1)
cat2 = Category.create(title: 'title2', user: user2)
cat3 = Category.create(title: 'title2', user: user1)

message1 = Message.create(description: 'desc1', category: cat1)
message2 = Message.create(description: 'desc2', category: cat2)
message3 = Message.create(description: 'desc3', category: cat1)
message4 = Message.create(description: 'desc3', category: cat3)