# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

colleges = [ "Berkeley", "Stanford", "Community College" ]
colleges.each do |name|
	College.create name: name
end
subjects = [ ["social sciences", 1], ["biological sciences", 1], ["mathematics", 1], ["engineering sciences", 1], ["arts", 1] ]
subjects.each do |name, college|
	Subject.create name: name, college_id: college
end
courses = [ ["Math 666", 3, "This is a math course."], ["Science 555", 1, "Science course."], ["Dancing", 5, "Learn to dance."], ["More Dancing", 5, "asdf."] ]
courses.each do |name, subject, description|
	Course.create name: name, subject_id: subject, description: description
end