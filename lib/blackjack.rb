cardtotal = 0

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  newcard = rand(1..11)
end

def display_card_total(cardtotal)
  puts "Your cards add up to #{cardtotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  actionz = gets.chomp
end

def end_game(numz)
  puts "Sorry, you hit #{numz}. Thanks for playing!"
end

def initial_round
  cardone = deal_card
  cardtwo = deal_card
  cards = cardone + cardtwo
  display_card_total(cards)
  return cards
end

def hit?
  output = prompt_user
  puts output
  answer = get_user_input
  if answer == "h"
    dealcard
  elsif answer == "s"
  else
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
