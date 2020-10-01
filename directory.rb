# Declaring array of student hashes
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]

# Method to print list of students
def print_student_list(students)
  puts "Students:"
  puts "----------------"
  students.each do |student|
    puts "#{student[:name]}, Cohort: #{student[:cohort]}"
  end
  puts "Overall, we have #{students.count} students"
end

# Method to print total number of students
def print_footer(students)
  puts "Overall, we have #{students.count} students"
end


def print_last_name(students)
  last_names = []
  students.each do |student|
    last_name = student[:name].split(" ")[-1]
    last_names.push(last_name)
  end
  puts last_names
end


#Main program loop
while true
  puts "1. View student list"
  puts "2. Add new student"
  puts "3. Delete student"
  puts "4. Edit student details"
  puts "8. Get student last names"
  puts "9. Quit"
  input = gets.chomp.to_i
  case input
  when 9
    break
  when 1
    print_header
    print_student_list(students)
    print_footer(students)
  when 2

  when 3

  when 4

  when 8
    print_last_name(students)
  else
    puts "Try again"
  end
end
