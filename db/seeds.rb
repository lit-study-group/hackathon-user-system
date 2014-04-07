# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.first_or_create!(
  username: 'foobar',
  password: 'foobar',
  admin: true,
  name: 'Lorem Ipsum',
  team_id: 1,
  avatar: 'study_group.jpg'
)
