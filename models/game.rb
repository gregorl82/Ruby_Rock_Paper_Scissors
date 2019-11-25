class Game

  def self.check(player1, player2)
    player1.downcase!
    player2.downcase!
    case
    when player1 == "rock" && player2 == "scissors"
        return "Player 1 wins by playing Rock!"
      when player1 == "rock" && player2 == "paper"
        return "Player 2 wins by playing Paper!"
      when player1 == "scissors" && player2 == "rock"
        return "Player 2 wins by playing Rock!"
      when player1 == "scissors" && player2 == "paper"
        return "Player 1 wins by playing Scissors!"
      when player1 == "paper" && player2 == "rock"
        return "Player 1 wins by playing Paper!"
      when player1 == "paper" && player2 == "scissors"
        return "Player 2 wins by playing Scissors!"
      when player1 == player2
        return "It's a draw!"
    end
  end

end
