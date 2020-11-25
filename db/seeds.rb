# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD


=======
require 'json'
require 'open-uri'
puts "clearing data"
Booking.destroy_all
Interview.destroy_all
User.destroy_all
puts "generating Users"
john = User.create!(email: "john@example.com", password: "123456", nickname: "Johnny_the_John", bio: "I got lots of experience with jobs and I worked a lot. But now I want a new job because new jobs are good.")
mary = User.create!(email: "mary@example.com", password: "123456", nickname: "Cool_Mary", bio: "Hi, I am Mary and I love coding. I want to do coding as a job. For my next interview I look for cool training partners.")
zoe = User.create!(email: "zoe@example.com", password: "123456", nickname: "zoe-bowie", bio: "I work in the IT industry for 20 years now. I love share my experience with you and to help you with your upcoming interviews!!")
peter = User.create!(email: "peter@example.com", password: "123456", nickname: "coding-king", bio: "I am the KING OF CODING and I will show you how it works so you get every job you want!")
lisa = User.create!(email: "lisa@example.com", password: "123456", nickname: "lizzy101", bio: "studied in England, worked as developer in Seoul, worked as senior develper in Tokio")
bruce = User.create!(email: "bruce@example.com", password: "123456", nickname: "brucybruce", bio: "I got 10 years of experience in Ruby and Ruby on rails, CSS, JS and Python. I can help you prepare for your job interview!")
puts "generating Interviews"
interview1 = Interview.create!(time: DateTime.new(2009,9,1,17), focus: "JS CSS HTML", experience: "medium", interview_language: "english", user: john)
interview2 = Interview.create!(time: DateTime.new(2020,12,12,17), focus: "HTML", experience: "entry level", interview_language: "german", user: mary)
interview3 = Interview.create!(time: DateTime.new(2020,12,12,18), focus: "JS", experience: "Senior level", interview_language: "french", user: zoe)
interview4 = Interview.create!(time: DateTime.new(2009,9,1,17), focus: "CSS", experience: "medium", interview_language: "japanese", user: peter)
interview5 = Interview.create!(time: DateTime.new(2020,12,12,17), focus: "Ruby Rails", experience: "beginner", interview_language: "english", user: lisa)
interview6 = Interview.create!(time: DateTime.new(2020,12,12,18), focus: "JS CSS", experience: "Senior level", interview_language: "dutch", user: bruce)
interview7 = Interview.create!(time: DateTime.new(2009,9,1,17), focus: "Ruby", experience: "expert", interview_language: "french", user: john)
interview8 = Interview.create!(time: DateTime.new(2020,12,12,17), focus: "JS CSS", experience: "medium", interview_language: "english", user: mary)
interview9 = Interview.create!(time: DateTime.new(2020,12,12,18), focus: "Ruby Rails", experience: "Senior level", interview_language: "german", user: zoe)
interview10 = Interview.create!(time: DateTime.new(2009,9,1,17), focus: "JS CSS HTML", experience: "beginner", interview_language: "english", user: peter)
interview11 = Interview.create!(time: DateTime.new(2020,12,12,17), focus: "Ruby", experience: "medium", interview_language: "english", user: lisa)
interview12 = Interview.create!(time: DateTime.new(2020,12,12,18), focus: "JS CSS HTML", experience: "Senior level", interview_language: "spanish", user: bruce)
puts "generating Bookings"
booking1 = Booking.create!(user: bruce, interview: interview1)
booking2 = Booking.create!(user: lisa, interview: interview2)
booking3 = Booking.create!(user: peter, interview: interview3)
booking4 = Booking.create!(user: zoe, interview: interview4)
booking5 = Booking.create!(user: zoe, interview: interview5)
booking6 = Booking.create!(user: zoe, interview: interview6)
puts "done"
>>>>>>> master
