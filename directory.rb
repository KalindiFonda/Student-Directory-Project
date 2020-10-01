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

# Method to print header of student list
def print_header
  puts "Students:"
  puts "----------------"
end

# Method to print list of students
def print_student_list(students)
  students.each do |student|
    puts student
  end
end

# Method to print total number of students
def print_footer(students)
  print "Overall, we have #{students.count} students"
end

#Main program calls
print_header
print_student_list(students)
print_footer(students)
