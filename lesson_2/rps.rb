ROCK = "rock"
PAPER = "paper"
SCISSORS = "scissors"

moves = [ROCK, PAPER, SCISSORS]
user_deal = ''

def prompt(message)
  puts "=> " + message
end

loop do
  loop do
    prompt("Make a choice between rock, paper, and scissors:")
    user_deal = gets.chomp.downcase
    if moves.include? user_deal
      break
    end
  end

  computer_deal = moves.sample
  puts computer_deal

  if (user_deal == ROCK && computer_deal == PAPER) ||
    (user_deal == PAPER && computer_deal == SCISSORS) ||
    (user_deal == SCISSORS && computer_deal == ROCK)
    puts "You lose!"
    puts "Try again loser!"
  elsif user_deal == computer_deal
    puts "It's a tie!"
    puts "We don't believe in ties around here!"
  else
    puts "You win!"
    break
  end
end
