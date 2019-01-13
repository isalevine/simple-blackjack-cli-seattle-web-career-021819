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
  cardtotaling = cardnumz
  prompt_user
  answer = get_user_input
  if answer == "h"
    deal_card
    cardtotaling += cardnumz
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
  cardtotalitos = 0
  welcome
  initial_round
  while cardtotalitos < 21
    cardtotalitos += hit?(7)
  end
  display_card_total(cardtotalitos)
  end_game(cardtotalitos)
end
