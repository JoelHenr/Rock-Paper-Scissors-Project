require_relative "./rockPaperScissors.rb"

# Keeping track of the score
wins = 0
loses = 0
tied = 0


# Throw it into a loop for best 2 out of 3
while loses < 2 && wins < 2 
    puts " Wins: #{wins}, Loses: #{loses}, Ties #{tied}"
    p 'Rock, Paper, Scissors... SHOOT!'
    puts "______________________________"
    name = gets.chomp.to_s
    player = Play.new
    answer = player.gameLogic(name)

    # logic to see if you win or lose or tie
    if answer == 'tie'
        puts 'You Tied'
        tied +=1
    end
    if answer == true
        puts 'You won!'
        wins += 1
    end

    if answer == false
        puts 'You Lose'
        loses += 1
    end
end

# The ending results
  if wins == 2
        puts 'You Win the series!!'
    elsif loses == 2
        puts 'You Lost the Series'
    end







