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
# and then prinnts them individually
puts "The students of Villains Academy"
puts "-----------"
students.each do |student|
  puts student
end
# finally, we print the total number of studennts
puts "Overall, we have #{students.count} great students"
