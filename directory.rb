# Declaring array of students
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

# print list of students
puts "Students:"
puts "----------------"
students.each do |student|
  puts student
end

#print total number of students
print "Overall, we have #{students.count} students"
