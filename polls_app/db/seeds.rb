# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'clayton')
user2 = User.create(username: 'derek')
user3 = User.create(username: 'elmo')
user4 = User.create(username: 'phil')

poll1 = Poll.create(title: 'coffee poll', user_id: 1)
poll2 = Poll.create(title: 'laptop poll', user_id: 2)

poll1_question1 = Question.create(body: 'favorite coffe type?', poll_id: poll1.id)
poll1_question2 = Question.create(body: 'favorite mug?', poll_id: poll1.id)

poll2_question1 = Question.create(body: 'favorite laptop?', poll_id: poll2.id)
poll2_question2 = Question.create(body: 'preferred laptop color?', poll_id: poll2.id)

p1q1a1= AnswerChoice.create(body: 'Colombian', question_id: poll1_question1.id)
p1q1a2= AnswerChoice.create(body: 'Venezuelan', question_id: poll1_question1.id)
p1q2a1= AnswerChoice.create(body: 'a/A Mug', question_id: poll1_question2.id)
p1q2a2= AnswerChoice.create(body: 'Disposable Peets', question_id: poll1_question2.id)

p2q1a1= AnswerChoice.create(body: 'Apple', question_id: poll2_question1.id)
p2q1a2= AnswerChoice.create(body: 'Windows', question_id: poll2_question1.id)
p2q2a1= AnswerChoice.create(body: 'Grey', question_id: poll2_question2.id)
p2q2a2= AnswerChoice.create(body: 'Black', question_id: poll2_question2.id)
