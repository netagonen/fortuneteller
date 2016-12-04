def ask_the_user
  print "> "
  gets.chomp
end

def get_y_n?
  while true
    answer = ask_the_user.capitalize
    if answer == "Y"
      return true
    elsif answer == "N"
      return false
    else
      puts "This is an ERROR, you typed #{answer}, please type y or n."
    end
  end
end

def get_num
  while true
    answer = ask_the_user
    answer_as_i = answer.to_i
    answer_as_s = answer_as_i.to_s
    if answer == answer_as_s && answer_as_i >= 0
      return answer_as_i
    else
      puts "This is an ERROR, you typed #{answer}, please type a positive integer"
    end
  end
end


def telling_fortune

  puts "Great, now I would have to ask you more questions!"

  correct = false
  while correct == false
    puts "Which continent are you from?"
    continents = ["Asia", "Africa", "America", "Antarctica", "Europe", "Australia"]
    continent = ask_the_user.capitalize
    if continents.include?(continent)
      case continent
      when "Asia", "Africa"
        fortune_cont = "you would travel a lot in your lifetime with orgenized travel agencies"
        correct = true
      when "America", "Antarctica"
        fortune_cont = "you are not gonna travel a lot around the world and you won't have any problems with it, cause you really love your own continent"
        correct = true
      when "Europe", "Australia"
        correct = fortune_cont - "you would travel a lot around the worled, mainly with unconvetional means of transportation"
        correct = true
      end
    else
      puts "This is an ERROR, you typed #{continent}, please type one of the following: Africa, America, Antarctica, Asia, Australia, Europe."
    end
  end


  puts "Pick a number from 1-10"
  number = get_num
  case number
  when 1..3
    num_fortune = "you are going to have an amazing experience in a week"
  when 4..6
    num_fortune = "you are going to have an amazing experience in a year"
  when 7..10
    num_fortune = "you are going to have an amazing experience in 10 years"
  end

  puts "Do you like ice creame? (y/n)"
  ice_cre = get_y_n?
  case ice_cre
  when true
    ice_fortune = "you are going to heaven!! yeepee :)"
  when false
    ice_fortune = "you are going to hell, boo hoo :( "
  end

  puts "Let me think......\nOK #{$name}, your fortune tells me that #{fortune_cont}; #{num_fortune} and... #{ice_fortune}"

end

puts "Welcome to the fortune teller game. I will tell your fortune"

puts "What is your name?"
correct = false
while correct == false
  $name = ask_the_user.capitalize
  puts "Your name is #{$name}, is this right (y/n)?"
  name = get_y_n?
  if name == true
    correct = true
    puts "Great, let's move on"
  else
    puts "Ok, type your name again"
  end
end

puts "#{$name} how old are you?"
age = get_num
puts "#{$name}, you are #{age} years old, very nice!"


puts "#{$name}, would you like me to tell you your fortune (y/n)?"
answer = get_y_n?
 if answer
  telling_fortune
else
  puts "OK then #{$name}, see you next time"
end
