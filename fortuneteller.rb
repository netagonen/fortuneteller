$prompt = "> "

def yes_to_fortune

  puts "Great, now I would have to ask you more questions!"
  puts "Which continent are you from?"
  print $prompt
  continent = gets.chomp.capitalize
  case continent
  when "Asia", "Africa"
    fortune_cont = "you would travel a lot in your lifetime with orgenized travel agencies"
  when "America", "Antarctica"
    fortune_cont = "you are not gonna travel a lot around the world and you won't have any problems with it, cause you really love your own continent"
  when "Europe", "Australia"
    fortune_cont - "you would travel a lot around the worled, mainly with unconvetional means of transportation"
  else
    puts "This is an ERROR, you typed #{continent}, please type one of the following: Africa, America, Antarctica, Asia, Australia, Europe."
    print $prompt
    continent = gets.chomp.capitalize
  end

  puts "Pick a number from 0-10"
  print $prompt
  number = gets.chomp.to_i
  case number
  when 0..2
    num_fortune = "you are going to have an amazing experience in a week"
  when 3..6
    num_fortune = "you are going to have an amazing experience in a year"
  when 7..10
    num_fortune = "you are going to have an amazing experience in 10 years"
  else
    puts "This is an ERROR, you typed #{number}, please tipe a number between 0-10"
  end

  puts "Do you like ice creame? (y/n)"
  print $prompt
  ice_cre = gets.chomp.capitalize
  case ice_cre
  when "Y"
    ice_fortune = "you are going to heaven!! yeepee :)"
  when "N"
    ice_fortune = "you are going to hell, boo hoo :( "
  else
    puts "This is an ERROR, you typed #{ice_cre}, please type y or n."
  end

  puts "Let me think......\nOK #{$name}, your fortune tells me that #{fortune_cont}; #{num_fortune} and... #{ice_fortune}"

end

puts "Welcome to the fortune teller game. I will tell your fortune"

puts "What is your name?"
print $prompt
$name = gets.chomp.capitalize
puts "Your name is #{$name}"

puts "#{$name} how old are you?"
print $prompt
age = gets.chomp.to_i
puts "#{$name}, you are #{age} years old, very nice!"

puts "#{$name}, would you like me to tell you your fortune (y/n)?"
print $prompt
answer = gets.chomp.capitalize
if answer == "Y"
  yes_to_fortune
else answer == "N"
  puts "OK then #{$name}, see you next time"
end
