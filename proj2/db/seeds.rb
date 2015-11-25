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
subjects.each do |name, college_id|
	Subject.create name: name, college_id: college_id
end
courses = [ ["Math 666", 3, "This is a math course."], ["Science 555", 1, "Science course."], ["Dancing 1", 5, "Learn to dance."], ["Dancing 2", 5, "asdf."], ["Engineering 1", 4, "basic engineering."], ["Bio 12", 2, "super advanced bio."] ]
courses.each do |name, subject, description|
	Course.create name: name, subject_id: subject, description: description
end
users = [ ["asdf@asdf.com", "asdfasdf" ], ["tim@email.com", "asdfasdf"] ]
users.each do |email, pass|
	user = User.new
	user.email = email
	user.password = pass
	user.save!
end
posts = [ ["Math is hard. Also dumb.", 1, "Math is terrible.", 1], ["Science cool.", 2, "Science post.", 2], ["Dancing", 3, "Dance post.", 2], ["Dancing is fun", 3, "I like dancing.", 1], ["I hate biology", 6, "Biology is the worst thing to ever exist.", 1] ]
posts.each do |title, course_id, content, user_id|
	Post.create title: title, course_id: course_id, content: content, user_id: user_id
end