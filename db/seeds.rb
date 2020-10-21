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
cat2 = Category.create(title: 'French Phrases', user: user2)
cat3 = Category.create(title: 'title2', user: user1)
# cat4 = Category.create(title: 'Italian', user: user2)
# cat5 = Category.create(title: 'Spanish', user: user2)

# lessons data

Lesson.create(language: 'Spanish', question: "I live in the United States.", answer: "Resido de EUA.|Yo vivo en Estados Unidos.|Yo habito de Estados Unidos.|2")
Lesson.create(language: 'Spanish', question: "Un abrigo caro.", answer: "An expensive coat")
Lesson.create(language: 'Spanish', question: "Do you speak English?", answer: "¿Hablas tú el perdón?|¿Tú hablas inglés?|¿Tú hablas español?|2")
Lesson.create(language: 'Spanish', question: "Él tiene un gato.", answer: "He has a cat")
Lesson.create(language: 'Spanish', question: "He eats apples.", answer: "Bebe pomas.|Él bebe manzanas.|Él come manzanas.|3")
Lesson.create(language: 'Spanish', question: "Mi apartamento es perfecto.", answer: "My apartment is perfect")
Lesson.create(language: 'Spanish', question: "Thanks!", answer: "¡Gracias!|¡Adiós!|¡Hola!|1")
Lesson.create(language: 'Spanish', question: "Sí, ¡lo siento!", answer: "Yes, sorry")
Lesson.create(language: 'Spanish', question: "Your wife.", answer: "Tu esposa.|Tren señora.|La gato de ustedes.|1")
Lesson.create(language: 'Spanish', question: "Yo no comprendo la pregunta.", answer: "I don't understand the question.")

Lesson.create(language: 'French', question: "We are at the bakery.", answer: "Nous sommes à la boulangerie.|On est avec la boulangerie-pâtisserie.|Nous sommes à la musique.|1")
Lesson.create(language: 'French', question: "J'habite à Paris", answer: "I live in paris")
Lesson.create(language: 'French', question: "Is your sister doing well?", answer: "Sa sœur se porte-t-elle bien ?|Ta sœur va bien ?|Ta mère se porte-t-elle bien ?|2")
Lesson.create(language: 'French', question: "Le métro", answer: "The subway")
Lesson.create(language: 'French', question: "A journalist", answer: "un professeur|une professeur|une journaliste|3")
Lesson.create(language: 'French', question: "Marie est journaliste.", answer: "Marie is a journalist")
Lesson.create(language: 'French', question: "These are my parents.", answer: "Voilà tes parents.|Ce sont mes parents.|Ce sont tes parents.|2")
Lesson.create(language: 'French', question: "Tu prends le train ?", answer: "Are you taking the train?")
Lesson.create(language: 'French', question: "They are in France.", answer: "Ils sont l' France.|Elles sont en Europe.|Elles sont en France.|3")
Lesson.create(language: 'French', question: "Je mange une pizza.", answer: "I am eating a pizza.")

Lesson.create(language: 'German', question: "Is Vienna in Austria?", answer: "Befindet sich Wien in Deutschland?|Ist Wien in Österreich?|Befindet sich Kanada in Österreich?|2")
Lesson.create(language: 'German', question: "Wo ist der Supermarkt?", answer: "Where is the supermarket?")
Lesson.create(language: 'German', question: "You are my brother.", answer: "Du bist mein Bruder.|Mein Sohn bist du.|Mein Vater sind Sie.|1")
Lesson.create(language: 'German', question: "Die Bibliothek ist in der Nähe.", answer: "The library is nearby.")
Lesson.create(language: 'German', question: "Oh, the movie theater is small!", answer: "Oh, das Kino ist klein!|Oh, ist das Café klein!|Oh, das Café ist klein!|1")
Lesson.create(language: 'German', question: "Kein Problem! Bis später!", answer: "No problem! See you later!")
Lesson.create(language: 'German', question: "Yes, you are my husband.", answer: "Nein, du bist mein Ehegatte.|Nein, mein Mann bist du.|Ja, du bist mein Mann.|3")
Lesson.create(language: 'German', question: "Eine Kirche und eine Bibliothek", answer: "A church and a library")
Lesson.create(language: 'German', question: "Yes, Vienna is very expensive.", answer: "Ja, Wien ist sehr teuer.|Nein, Wien ist äußerst teuer.|Ja, Kanada ist äußerst teuer.|1")
Lesson.create(language: 'German', question: "Meine Schwester ist Lehrerin", answer: "My sister is a teacher.")

Lesson.create(language: 'Italian', question: "I eat my sandwich.", answer: "Mangio il mio panino.|Mangio il mio panini.|Mangio mio panino.|1")
Lesson.create(language: 'Italian', question: "Non ho il pranzo.", answer: "I do not have the lunch.")
Lesson.create(language: 'Italian', question: "Their elephant drinks milk.", answer: "Il loro elefante beve latte.|Il suo elefante beve latte.|Loro elefante beve latte.|1")
Lesson.create(language: 'Italian', question: "Non mangiate le mie caramelle.", answer: "You do not eat my candy.")
Lesson.create(language: 'Italian', question: "We drink lemonade.", answer: "Noi bevono la limonata.|Noi beviamo la limonata.|Noi beviamo una limonata.|2")
Lesson.create(language: 'Italian', question: "Noi beviamo il tè.", answer: "We drink tea.")
Lesson.create(language: 'Italian', question: "The cook has cheese on the plate.", answer: "Lo cuoco ha formaggio nel piatto.|Le cuoco ha formaggio nel piatto.|Il cuoco ha formaggio nel piatto.|3")
Lesson.create(language: 'Italian', question: "Non ho il pranzo.", answer: "I do not have the lunch.")
Lesson.create(language: 'Italian', question: "A lion eats a mouse.", answer: "Un leone mangia il topo.|Il leone mangia un topo.|Un leone mangia un topo.|3")
Lesson.create(language: 'Italian', question: "Loro sono ragazze.", answer: "They are girls.")

# message2 = Message.create(description: 'Closest Bathroom', category: cat2, language: 'French', voice: 'Amelie', content:'bonjour')
# message5 = Message.create(description: 'Closest Hotel', category: cat2, language: 'French', voice: 'Amelie', content:'mon ami')
# message6 = Message.create(description: 'some water please', category: cat4, language: 'Italian', voice: 'Luca', content: 'Ciao Bella')
# message7 = Message.create(description: 'what time is it?', category: cat5, language: 'Spanish', voice: 'Jorge', content: 'Mira mira')
# message2 = Message.create(description: 'Closest Bathroom', category: cat2, language: 'fr', voice: 'Amelie', content:'bonjour')
# message5 = Message.create(description: 'Closest Hotel', category: cat2, language: 'fr', voice: 'Amelie', content:'mon ami')
# message6 = Message.create(description: 'some water please', category: cat4, language: 'it', voice: 'Luca', content: 'Ciao Bella')
# message7 = Message.create(description: 'what time is it?', category: cat5, language: 'es', voice: 'Jorge', content: 'Mira mira')
