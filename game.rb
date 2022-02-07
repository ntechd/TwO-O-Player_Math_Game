# Player1, Player2
#game, lives, current_player, scores, winner, questions
require './player'
require './questions'

class Game

  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
  end

  def start
    puts "Game Started"
    puts "#{@player1.name} vs. #{@player2.name}"
    active_player = @player1


    while !end_game
      question = Question.new
      question.ask_question(active_player)
      lives_board

      new_turn 

      if(active_player == @player1)
        active_player = @player2
      else
        active_player = @player1
      end

    end

    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    game_over
  end

  def new_turn
    puts "New turn"
  end

  def game_over
    puts "Game Over"
    puts "Goodbye"
  end

  def end_game
    @player1.lives == 0 || @player2.lives == 0
  end

  def lives_board
    puts "#{@player1.name} #{@player1.lives}/3 vs #{@player2.name} #{@player2.lives}/3"
  end

  def winner #guard clause
    return @player1 if @player1.lives > 0 
    return @player2 if @player2.lives > 0 
  end

end
