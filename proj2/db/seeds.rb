# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

colleges = [ "Berkeley", "Stanfurd", "USC" ]
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
  ["MCB 9000", 2, "Advanced af Molecular and Cellular Biology"], 
  ["Bio 12", 2, "Advanced Biology"], 
  ["Math 1", 3, "Basic Calculus"], 
  ["Engineering 1", 4, "basic engineering."], 
  ["Dancing 1", 5, "Learn to dance."], 
  ["Dancing 2", 5, "asdf."],
  
  ["English 1A", 6, "Intro to ABC's."], 
  ["English 1B", 6, "2nd Grade Reading"], 
  ["Physics 9000", 7, "Pretty much elementary physics."], 
  ["Chem 12", 7, "Advanced Chemistry, not really though."], 
  ["Math 20A", 8, "Basic Addition and Subtraction"], 
  ["Engineering 10", 9, "Introduction to Legos."], 
  ["CS 55", 9, "Supervised iPad Free Time"],
  ["Art 10A", 10, "Finger Painting."], 
  ["Media Studies 20", 10, "Introduction to Sesame Street"],
  
  ["Literature 32A", 11, "Introduction to Creative Writing."], 
  ["Literature 32B", 11, "Advanced composiiton"], 
  ["MCB 93", 12, "Advanced Molecular and Cellular Biology"], 
  ["Biology 64", 12, "Advanced Biology"], 
  ["Math 104", 13, "Basic Calculus"], 
  ["EE 16A", 14, "basic engineering."], 
  ["Rap 6", 15, "Learn to Spit Bars."], 
  ["Music 10", 15, "17th Century Symphonies."] ]
courses.each do |name, subject, description|
	Course.create name: name, subject_id: subject, description: description
end
users = [ ["johndoe@gmail.com", "youknowit", "John", "Philosophy", "Freshman", "Cal" ], ["timotheyc@email.com", "menameistimmy", "Tim Caudillo", "Math", "Junior", "UCLA"], ["bryantkobe@email.com", "GOATGOAT", "Kobe Bryant", "Cognitive Science", "Sophmore", "USC"] ]
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
  ["Engineering is my life.", 6, "This class gave me hives.", 1], 
  ["Basic calculus", 5, "The prof was pretty much not understandable. I got an F.", 1], 
  ["Science cool.", 3, "Science post.", 1], 
  ["Dancing", 8, "Dance post.", 1], 
  ["Dancing is fun", 7, "I like dancing.", 1], 
  ["I hate biology", 4, "Biology is the worst thing to ever exist.", 1], 
  
  ["Hard Clas.", 9, "reely hard. Took me three weecs to get passd d", 2], 
  ["I kept stepping on them.", 14, "Make sure you wear shoes.", 2], 
  ["Too hard", 13, "I have no idea what was going on, failed the final.", 2], 
  ["Science cool.", 11, "Its nise.", 2], 
  ["Dancing", 16, "Dance post.", 2], 
  ["Rapping is fun", 15, "I like rapping.", 2], 
  ["Is this the Krusty Krab", 12, "No this is Patrick.", 2],
  
  ["Good English Class.", 18, "Teacher was clear, and assignments were reasonable. Recommend", 1], 
  ["Engineering is my life.", 23, "This class gave me hives.", 3], 
  ["Basic calculus", 22, "The prof was pretty much not understandable. I got an F.", 3], 
  ["Science cool.", 20, "Science post.", 2], 
  ["Dancing", 25, "Great dance class. Learned lots of new moves.", 2], 
  ["Music is fun", 24, "I like music.", 1], 
  ["I hate biology", 21, "Biology is the worst thing to ever exist.", 3]
  
  ]
posts.each do |title, course_id, content, user_id|
	Post.create title: title, course_id: course_id, content: content, user_id: user_id
end





