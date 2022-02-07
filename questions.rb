class Question
  attr_accessor :val1, :val2, :answer

  def initialize()
    #picking 2 random values for the question
    @val1 = rand(21)
    @val2 = rand(21)
    @answer = @val1 + @val2
  end

  def ask_question (player)
    puts "#{player.name}: What does #{@val1} plus #{@val2} equal?"
    answer = gets.chomp.to_i
    if(answer == @answer)
      player.increase_score
      puts "#{player.name}: YES! You are correct"
    else 
      player.lose_life
      puts "#{player.name}: Seriously? No!"
    end
  end

end
