# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'roseannebarr420', password: 'blahblah', full_name: 'Mary Lynn Ritch')
User.create(username: 'xxbobsagat69', password: 'buoybuoy', full_name: 'David Anderson')

Book.create(user_id: 1, title: 'The Autobiography of Gucci Mane', author: 'Neil Martinez Belkin', page_count: 286, genre: 'biography')
Book.create(user_id: 1, title: 'Mindhunter', author: 'John Douglas', page_count: 420, genre: 'true crime')
Book.create(user_id: 2, title: "Lenin's Tomb", author: "David Remnick", page_count: 588, genre: "history")
Book.create(user_id: 2, title: 'Transmetropolitan: Back on the Street', author: 'Warren Ellis', page_count: 50, genre: 'graphic novel')
Book.create(user_id: 2, title: 'Pythong Tricks: the Book', author: 'Dan Bader', page_count: 302, genre: 'computer sciencce')
Book.create(user_id: 2, title: 'The Original of Laura', author: 'Vladimir Nabokov', page_count: 278, genre: 'literature')