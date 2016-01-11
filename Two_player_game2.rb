require_relative 'player_class.rb'


  @player1 = Player.new
  @player2 = Player.new


@current_player = @player1


  def switch_players
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
    return @current_player.to_s
  end
 
 
  def generate_question
    @random_number_1 = rand(1..20)
    @random_number_2 = rand(1..20)
    @answer = @random_number_1 + @random_number_2
    puts " What does " + @random_number_1.to_s + " plus " + @random_number_2.to_s + " equal?"
  end

  def prompt_player_for_answer
    prompt = "< "
    puts "What is your answer?"
    print prompt
    @playeranswer = gets.chomp
    return @playeranswer
  end

  def verify_answer
      if @playeranswer == @answer
      puts "Now you #{@current_player} have a score of " + (@current_player.gain_points).to_s + " ."
      else
      puts "Now you #{@current_player} have " + (@current_player.lose_life).to_s + " life." 
      end
   end

while @player1.alive? || @player2.alive?
  def play
  puts generate_question
  puts prompt_player_for_answer
  puts verify_answer
  puts switch_players
  end

play
end


  # puts switch_players
  # puts verify_answer
  # puts switch_players
  # puts verify_answer
  #  puts switch_players
  # puts verify_answer
  #  puts switch_players
  # puts verify_answer


# end
#   def play(player)
#       generate_question
#       prompt_player_for_answer
#       verify_answer(player)
#       switch_players
#   end

#   def interact(player)
#     while player.alive?
#         player.play
#     end
      
#   end

# end






