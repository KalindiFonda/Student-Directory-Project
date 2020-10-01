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


# Method to print header of student list
def print_header
  puts "Students:"
  puts "----------------"
end

# Method to print list of students
def print_student_list(students)
  students.each do |student|
    puts "#{student[:name]}, Cohort: #{student[:cohort]}"
  end
end

# Method to print total number of students
def print_footer(students)
  puts "Overall, we have #{students.count} students"
end


def last_name(students)
  last_names = []
  students.each do |student|
    last_name = student[:name].split(" ")[-1]
    last_names.push(last_name)
  end
  puts last_names
end



#Main program calls
print_header
print_student_list(students)
print_footer(students)
print_last_name(students)
