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

def print_last_name(students)
  last_names = []
  students.each do |student|
    last_name = student[:name].split(" ")[-1]
    last_names.push(last_name)
  end
  puts last_names
end

def add_student(students)
  puts "Enter name of student:"
  name = gets.chomp
  puts "Enter cohort of student:"
  cohort = gets.chomp.to_sym
  students.push({name: name, cohort: cohort})
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
    print_student_list(students)
  when 2
    add_student(students)
  when 3
    delete_student(students)
  when 4
    edit_student(students)
  when 8
    print_last_name(students)
  else
    puts "Try again"
  end
end
