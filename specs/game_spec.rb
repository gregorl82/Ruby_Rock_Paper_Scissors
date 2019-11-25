require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/game.rb')

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class GameTest < MiniTest::Test

  def test_rock_vs_scissors()
    assert_equal("Rock", Game.check("Rock", "Scissors"))
  end

  def test_rock_vs_paper()
    assert_equal("Paper", Game.check("Rock", "Paper"))
  end

  def test_rock_vs_rock()
    assert_equal("No one", Game.check("Rock", "Rock"))
  end

  def test_scissors_vs_rock()
    assert_equal("Rock", Game.check("Scissors", "Rock"))
  end

  def test_scissors_vs_scissors()
    assert_equal("No one", Game.check("Scissors", "Scissors"))
  end

  def test_scissors_vs_paper()
    assert_equal("Scissors", Game.check("Scissors", "Paper"))
  end

  def test_paper_vs_rock()
    assert_equal("Paper", Game.check("Paper", "Rock"))
  end

  def test_paper_vs_scissors()
    assert_equal("Scissors", Game.check("Paper", "Scissors"))
  end

  def test_paper_vs_paper()
    assert_equal("No one", Game.check("Paper", "Paper"))
  end

end
