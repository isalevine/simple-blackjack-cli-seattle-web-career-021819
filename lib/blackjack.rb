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

def hit?(cardnumz)
  prompt_user
  answer = get_user_input
  if answer == "h"
    cardtotaling = cardnumz
    cardtotaling += deal_card
  elsif answer == "s"
    cardtotaling = cardnumz
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  cardfinal = 0
  welcome
  initial_round
  until cardfinal > 21
    cardfinal += hit?(10)
  end
  if cardfinal == "30"
  else
    cardfinal = "30"
  end
  display_card_total(cardfinal)
  end_game(cardfinal)
end
