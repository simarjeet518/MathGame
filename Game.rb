class Game < Players
  

  def initialize(id, result)
   super(id , result)
  end

  def check_answer(num1, num2 , answer)
    correct_answer = num1 + num2
    correct_answer == answer.to_i
    
  end

  def update_result(boolean)
    boolean ? @result += 1 : @result
  end


  def play_game
   num1 = rand(1..20)
   num2 = rand(1..20)
   player = "Player #{id}:"

   puts "#{player} What does #{num1} plus #{num2} equals?"
   answer = gets.chomp
   
   player_result = check_answer(num1, num2, answer)
   puts print_result(player_result)
   update_result(player_result) 
  end

  def print_result(boolean)
    boolean ? "YES! You are correct." : "Seriously? No!"
  end

end
