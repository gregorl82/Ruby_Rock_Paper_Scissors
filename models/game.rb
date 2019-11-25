class Game

  def self.check(player1, player2)
    player1.downcase!
    player2.downcase!
    case
    when player1 == "rock" && player2 == "scissors"
        return "Rock"
      when player1 == "rock" && player2 == "paper"
        return "Paper"
      when player1 == "scissors" && player2 == "rock"
        return "Rock"
      when player1 == "scissors" && player2 == "paper"
        return "Scissors"
      when player1 == "paper" && player2 == "rock"
        return "Paper"
      when player1 == "paper" && player2 == "scissors"
        return "Scissors"
      when player1 == player2
        return "No one"
    end
  end

end
