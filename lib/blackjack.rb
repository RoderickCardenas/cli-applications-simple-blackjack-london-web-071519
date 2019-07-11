require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}" 
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
num1 = deal_card
num2 = deal_card
total = num1 + num2
display_card_total(total)
total
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(number = 0)
  prompt_user
  input = get_user_input
  newCard = deal_card
  total = number + newCard
  
    if input == 's' || 'h'
      if input == 's'
        return number
      end
      
      if input == 'h'
        total
      end
    else
      invalid_command
      number
    end
  end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  number = initial_round
  display_card_total(number)
  total = hit?(initial_round)
  
  hit?(initial_round)
  if total < 21
    until hit?(initial_round) > 21
      hit?(total)
    end
  end
  if hit?(initial_round) > 21 
    end_game(total)
  end
end
    
