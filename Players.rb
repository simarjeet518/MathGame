class Players
   attr_reader :id
   attr_accessor :result

  def initialize(id, result)
    @id = id
    @result = result
  end

  def output
    "P#{id}  #{result}/3"
  end

  def self.winner(player)
  
   if player[1] == player[2]
     result = "Match Ties"
   else

    result = player[1] > player[2] ? "Player 1 wins with  a score #{player[1]}/3" : "Player 2 wins with  a score #{player[2]}/3"
  end  
end

end