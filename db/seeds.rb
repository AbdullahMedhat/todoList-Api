# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "clown@clowns.com", password: "342516", password_confirmation: "342516", middleName: "a", lastName: "co", firstName: "Sh") 
Todolist.create!(user_id: 1, name: "Death Note")
Todolist.create!(user_id: 1, name: "Death Note 2")
Todo.create!(title: "Alex", todoList_id: 1)
Todo.create!(title: "Zeus", todoList_id: 1)
Todo.create!(title: "Roman", todoList_id: 1)
Todo.create!(title: "Oasis", todoList_id: 2)
Todo.create!(title: "DemonShitan", todoList_id: 2)
Todo.create!(title: "Urchii", todoList_id: 2)
Todo.create!(title: "Crebrues", todoList_id: 2)
Todo.create!(title: "Captain Ivy", todoList_id: 2)
