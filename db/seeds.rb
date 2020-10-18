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
cat2 = Category.create(title: 'French', user: user2)
cat3 = Category.create(title: 'title2', user: user1)
cat4 = Category.create(title: 'Italian', user: user2)
cat5 = Category.create(title: 'Spanish', user: user2)

message2 = Message.create(description: 'Closest Bathroom', category: cat2, language: 'French', voice: 'Amelie', content:'bonjour')
message5 = Message.create(description: 'Closest Hotel', category: cat2, language: 'French', voice: 'Amelie', content:'mon ami')
message6 = Message.create(description: 'some water please', category: cat4, language: 'Italian', voice: 'Luca', content: 'Ciao Bella')
message7 = Message.create(description: 'what time is it?', category: cat5, language: 'Spanish', voice: 'Jorge', content: 'Mira mira')