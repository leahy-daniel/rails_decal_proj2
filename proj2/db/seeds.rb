# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

colleges = [ "Berkeley", "Stanford", "USC" ]
colleges.each do |name|
	College.create name: name
end
subjects = [ ["Social Sciences", 1], ["Biological Sciences", 1], ["Mathematics", 1], ["Engineering Sciences", 1], ["Arts", 1] ]
subjects.each do |name, college_id|
	Subject.create name: name, college_id: college_id
end
subjects = [ ["Social Sciences", 2], ["Biological Sciences", 2], ["Mathematics", 2], ["Engineering Sciences", 2], ["Arts", 2] ]
subjects.each do |name, college_id|
	Subject.create name: name, college_id: college_id
end
subjects = [ ["Social Sciences", 3], ["Biological Sciences", 3], ["Mathematics", 3], ["Engineering Sciences", 3], ["Arts", 3] ]
subjects.each do |name, college_id|
	Subject.create name: name, college_id: college_id
end
courses = [ ["English 16A", 1, "Introduction to Creative Writing."], 
  ["English 16B", 1, "Advanced composiiton"], 
  ["MCB 1", 2, "Molecular and Cellular Biology"],
  ["Bio 12", 2, "Intro to Integrative Biology"],
  ["Math 1", 3, "Basic Calculus"], 
  ["Engineering 1", 4, "Engineering Freshman Seminar"],
  ["Dancing 1", 5, "Learn to dance."], 
  ["Dancing 16", 5, "Tango Dancing."],
  
  ["English 1A", 6, "Creative Writing"],
  ["English 1B", 6, "Modern Poetry Analysis"],
  ["Physics 9A", 7, "Introduction to Physics"],
  ["Chem 12", 7, "Chemical Engineering"],
  ["Math 20A", 8, "Linear Algebra"],
  ["Engineering 10", 9, "Thermodynamics"],
  ["CS 55", 9, "Introductin to Programming in Python"]
  ["Art 10A", 10, "Drawing"],
  ["Media Studies 20", 10, "Modern Society and Media"],
  
  ["Literature 32A", 11, "Poetry"],
  ["Literature 32B", 11, "Advanced composiiton"], 
  ["MCB 93", 12, "Advanced Molecular and Cellular Biology"], 
  ["Biology 64", 12, "Advanced Biology"], 
  ["Math 104", 13, "Basic Calculus"], 
  ["EE 16A", 14, "Circuits"],
  ["Music 1", 15, "Introduction to Western Music"],
  ["Music 10", 15, "17th Century Symphonies."] ]
courses.each do |name, subject, description|
	Course.create name: name, subject_id: subject, description: description
end
users = [ ["johndoe@gmail.com", "youknowit", "John", "Philosophy", "Freshman", "Cal" ], ["timotheyc@email.com", "menameistimmy", "Tim Caudillo", "Math", "Junior", "UCLA"], ["bryantkobe@email.com", "GOAT", "Kobe Bryant", "Cognitive Science", "Sophmore", "USC"] ]
users.each do |email, pass, name, major, year, school|
	user = User.new
	user.email = email
	user.password = pass
	user.name = name
	user.major = major
	user.year = year
	user.school = school
	user.save!
end
posts = [ ["Great Class.", 1, "Love this class. Easy A. Highly recommend", 1], 
  ["Highly recommend", 6, "This class was difficult at first, but the professor is very understanding.", 1],
  ["Basic calculus", 5, "The prof was pretty much not understandable. I got an F.", 1], 
  ["Yeah science!.", 3, "We did some really cool experiments in lab!", 1],
  ["Dancing", 8, "Instructor is grea!", 1],
  ["Dancing is fun", 7, "Loved the class, took it with some freinds and we all had fun!", 1],
  ["I hate biology", 4, "Professor was not understanding and did not curve the course!", 1]
  
  ["Solid class", 9, "Assignments can take a while but you learn a lot!", 2],
  ["Great Professor", 14, "Professor Smith is the man!", 2],
  ["Too hard", 13, "I have no idea what was going on, failed the final.", 2], 
  ["I love science!", 11, "Super friendly professor and the labs are very interactive.", 2],
  ["Dancing", 16, "Good class to take if you need units", 2],
  ["Dancing is fun", 15, "I like dancing.", 2], 
  ["Is this the Krusty Krab", 12, "No this is Patrick.", 2]
  
  ["Good English Class.", 18, "Teacher was clear, and assignments were reasonable. Recommend", 1], 
  ["Engineering is hard.", 23, "Long problem sets and difficult final.", 3],
  ["Okay professor", 22, "The Professor went too fast in lecture but was helpful in office hours.", 3],
  ["Hard Final.", 20, "The homeworks and labs were very reasonable but the final was extrememely difficult.", 2],
  ["Dancing", 25, "Great dance class. Learned lots of new moves.", 2], 
  ["Dancing is fun", 24, "I like dancing.", 1], 
  ["Poorly Organized course", 21, "Since it was the professor's first time teaching this course, there were some things that could have been done better but overal was okay.", 1]
  
  ]
posts.each do |title, course_id, content, user_id|
	Post.create title: title, course_id: course_id, content: content, user_id: user_id
end





