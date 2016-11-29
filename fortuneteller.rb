$prompt = "> "
def yes_to_fortune
  puts "Great, now I would have to ask you more questions!"
  puts "Which continent are you from?"
  print $prompt
  continent = gets.chomp.capitalize

  case continent
  when "Asia", "Africa"
    fortune_cont = "You would travel a lot in your lifetime with orgenized travel agencies "
  when "America", "Antarctica"
    fortune_cont = "You are not gonna travel a lot around the world and you won't have any problems with it, cause you really love your own continent"
  when "Europe", "Australia"
    fortune_cont - "You would travel a lot around the worled, mainly with unconvetional means of transportation"
  else
    puts "This is an ERROR"
  end
end

puts "Welcome to the fortune teller game. I will tell your fortune"

puts "What is your name?"
print $prompt
name = gets.chomp.capitalize
puts "Your name is #{name}"

puts "#{name} how old are you?"
print $prompt
age = gets.chomp.to_i
puts "#{name}, you are #{age} years old, very nice!"

puts "#{name}, would you like me to tell you your fortune (y/n)?"
print $prompt
answer = gets.chomp.capitalize
if answer == "Y"
  yes_to_fortune
else answer == "N"
  puts "OK then, see you next time"
end
