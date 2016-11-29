prompt = ">"

puts "Welcome to the fortune teller game. I will tell your fortune"

puts "What is your name?"
puts prompt
name = gets.chomp.capitalize
puts "Your name is #{name}"

puts "#{name} how old are you?"
puts prompt
age = gets.chomp.to_i
puts "#{name}, you are #{age} years old, very nice!"

puts "#{name}, would you like me to tell you your fortune (y/n)?"
puts prompt
answer = gets.chomp.capitalize
if answer == "Y"
  puts "Great #{name}, now I would have to ask you more questions!"
else answer == "N"  
  puts "OK then, see you next time"
end
