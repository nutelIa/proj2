# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Make Users
%w(Elmo Dirks Santa).each do |name|
  User.create name: name, email: name+"@email.com", password: 'password'
end

# Make Tasks
%w(Study Sleep Eat).each do |name|
  Task.create todo: name, user_id: rand(1..3), finished: false
end
