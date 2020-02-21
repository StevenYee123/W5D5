# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
jd = User.create!(username: 'John Doe')
jj = User.create!(username: 'Joe Joe')
bm = User.create!(username: 'Bananaman')
ss = User.create!(username: 'Stevey Stevo')

Poll.delete_all
poll1 = Poll.create!(title: 'Rate a/A', author_id: jd.id)
poll2 = Poll.create!(title: 'Best Pod', author_id: jj.id)
poll3 = Poll.create!(title: 'Best TA', author_id: bm.id)

Question.delete_all
q1 = Question.create!(question: 'Pick a number from 1 to 5', poll_id: poll1.id)
q2 = Question.create!(question: 'Which pod best pod??', poll_id: poll2.id)
q3 = Question.create!(question: 'Who is the best TA at a/A?', poll_id: poll3.id)

AnswerChoice.delete_all
ac1 = AnswerChoice.create!(text: '1', question_id: q1.id)
ac2 = AnswerChoice.create!(text: '2', question_id: q1.id)
ac3 = AnswerChoice.create!(text: '3', question_id: q1.id)
ac4 = AnswerChoice.create!(text: '4', question_id: q1.id)
ac5 = AnswerChoice.create!(text: '5', question_id: q1.id)
ac6 = AnswerChoice.create!(text: 'Brooklyn Pod', question_id: q2.id)
ac7 = AnswerChoice.create!(text: 'Manhattan Pod', question_id: q2.id)
ac8 = AnswerChoice.create!(text: 'PETER', question_id: q3.id)
ac9 = AnswerChoice.create!(text: 'Adam', question_id: q3.id)
ac10 = AnswerChoice.create!(text: 'THANKS JOSH', question_id: q3.id)

Response.delete_all
r1 = Response.create!(user_id: jd.id, answer_choice_id: ac5.id) 
r2 = Response.create!(user_id: jj.id, answer_choice_id: ac3.id) 
r3 = Response.create!(user_id: bm.id, answer_choice_id: ac8.id) 
r4 = Response.create!(user_id: ss.id, answer_choice_id: ac9.id) 