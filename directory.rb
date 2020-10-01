# Declaring array of student hashes
=begin
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
=end
students = []
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

def print_menu
  puts "1. View student list"
  puts "2. Add new student"
  puts "3. Delete student"
  puts "4. Edit student details"
  puts "8. Get student last names"
  puts "9. Quit"
end

# save students to file
def save_students(students)
  # open file for write
  file = File.open("students.csv", "w+")
  # iterate over students and save
  students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

# load students from file
def load_students(students)
  # open file for read
  file = File.open("students.csv", "a+")
  # iterate over lines and read student name and cohort
  file.readlines.each do |line|
    name, cohort = line.chomp.split(",")
    students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

load_students(students)
#Main program loop
while true
  print_menu
  input = gets.chomp.to_i
  case input
  when 9
    save_students(students)
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
