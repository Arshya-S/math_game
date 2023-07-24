class Game

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def math_question
    num_one = rand(1..20)
    num_two = rand(1..20)
    answer = num_one + num_two
    result = [num_one, num_two, answer]
    return result
  end

  def run_game
    # Default current player to player 1
    current_player = @player_one

    # Game loop based on plauer lives
    while @player_one.lives > 0 && @player_two.lives > 0
        
        # Generate question and ask it
        current_question = math_question()
        puts "---- New Turn ----"
        puts "#{current_player.name}: What does #{current_question[0]} + #{current_question[1]} equal? \n"
    
        answer = gets.chomp.to_i
 
        # Evaluate Question
        if answer != current_question[2]
          puts "#{current_player.name} Incorrect answer!"
          current_player.lives -= 1
          puts "#{@player_one.name}: #{@player_one.lives}/3 vs #{@player_two.name}: #{@player_two.lives}/3"
        elsif answer == current_question[2]
          puts "#{current_player.name} Correct answer!"
          puts "#{@player_one.name}: #{@player_one.lives}/3 vs #{@player_two.name}: #{@player_two.lives}/3"
        end

        # Change the current player
        if current_player == @player_one
          current_player = @player_two
        else 
          current_player = @player_one
        end 
    end

    if @player_one.lives > 0
      puts "#{@player_one.name} wins with a score of #{@player_one.lives}/3 \n"
      puts "--- Game Over ---"
    else 
      puts "#{@player_two.name} wins with a score of #{@player_two.lives}/3 \n"
      puts "--- Game Over ---"
    end
    
  end



end