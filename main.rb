require './Players'
require './Game'


player1 = Game.new(1 ,0)
player2 = Game.new(2, 0)


3.times {

 player1.play_game
 puts "#{player1.output} vs #{player2.output}"
 puts "------NEW TURN---------"

 player2.play_game
 puts "#{player1.output} vs #{player2.output}"
 puts "------NEW TURN---------"
}

puts "....some time later....."

puts Players.winner(
  {player1.id => player1.result,
   player2.id => player2.result}
)

puts "------GAME OVER------------"
puts "Good bye!"