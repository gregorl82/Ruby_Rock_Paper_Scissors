class Game

  def self.check(player1, player2)
    case
      when player1 == "Rock" && player2 == "Scissors"
        return "Rock"
      when player1 == "Rock" && player2 == "Paper"
        return "Paper"
      when player1 == "Scissors" && player2 == "Rock"
        return "Rock"
      when player1 == "Scissors" && player2 == "Paper"
        return "Scissors"
      when player1 == "Paper" && player2 == "Rock"
        return "Paper"
      when player1 == "Paper" && player2 == "Scissors"
        return "Scissors"
      when player1 == player2
        return "No one"
    end
  end

end
