# begin and end loop -> while lives > 0

# call player1.new, player2.new, game.new

# player1 -> call a question store in variable and puts

require 'pp'
require './game'
require './player'
require './questions'

game = Game.new("Bob", "Steve")
game.start



# pl1 = Player.new("Bob")
# pl2 = Player.new("Steve")

# lives = 3 

# while lives == 0 

# if(player == pl1)
#   player = pl2
# else
#   player = pl1
# end

# puts player

#   question = Question.new
#   player_ans = gets.chomp
#   answer = Question.answer

#   if(player_ans ==  answer)
#    player.correct
#   else
#     player.incorrect
#   end

 
# end
