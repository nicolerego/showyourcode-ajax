# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create!(
	:name => "Project One",
	:description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
	:link => "wwww.example.com", 
	:owner_id => 1
)

Project.create!(
	:name => "Project Two",
	:description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
	:link => "wwww.example.com", 
	:owner_id => 1
)

Project.create!(
	:name => "Project Three",
	:description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
	:link => "wwww.example.com", 
	:owner_id => 1
)
