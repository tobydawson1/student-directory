@students = []

def interative_menu
  loop do
    print_menu
    # 2. Read the input and save it to a variable
    # 3. do what the user has asked
    process(gets.chomp)
  end
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  #iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def process(selection)
  case selection
  when "1"
    students = input_students
  when "2"
    show_students
  when "3"
    save_students
  when "9"
    exit #this will cause the program to terminate.
  else
    puts "I don't know what you meant,try again"
  end
end
def print_menu
  #1. Print the menu and ask the user what to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. EXIT"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def input_students
  puts "Please enter the names, any hobbies, where they are from and the height of the students"
  puts "To finish, type stop when asked for a name."
  #reate and empty array
  #get the first names
  puts 'Name?'
  name = gets.chomp!
  puts 'Hobbies?'
  hobbies = gets.chomp!
  puts 'Where are they from?'
  origin = gets.chomp!
  puts 'How tall are they?'
  height = gets.chomp!
  #While name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    @students << {name: name, cohort: :november, hobbies: hobbies, COB: origin, height: height }
    if @students.count == 1
    puts "Now we have #{@students.count} student"
    else
    puts "Now we have #{@students.count} students"
  end
    #get another name from the user
    puts 'Name?'
    name = gets.chomp!
    if name == "stop"
      break
    end
    puts 'Hobbies?'
    hobbies = gets.chomp!
    puts 'Where are they from?'
    origin = gets.chomp!
    puts 'How tall are they?'
    height = gets.chomp!
  end
end

def print_header
# and then prinnts them individually
puts "The students of Villains Academy"
puts "-----------"
end

def print_student_list
  @students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort) (#{student[:hobbies]} is his hobbie ) (From #{student[:COB]}) ( and his height is #{student[:height]}) "
end
end

def print_footer
# finally, we print the total number of studennts
if @students.count == 1
  puts "Overall, we have #{@students.count} great student"
else
  puts "Overall, we have #{@students.count} great students"
end
end

interative_menu
print_header
print
print_footer
