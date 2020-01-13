#puts all students into an array
students = [
  "Dr.Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddie Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
def print_header
# and then prinnts them individually
puts "The students of Villains Academy"
puts "-----------"
end

def print(names)
  names.each do |student|
  puts student
  end
end
def print_footer(names)
# finally, we print the total number of studennts
puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
