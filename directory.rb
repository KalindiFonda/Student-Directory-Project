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
  puts "5. Quit"
  input = gets.chomp.to_i
  if input == 5
    break
  elsif input == 1
    print_student_list(students)
  elsif input == 2
    add_student(students)
  elsif input == 3
    delete_student(students)
  elsif input == 4
    edit_student(students)
  end
end
