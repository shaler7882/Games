defmodule Games.RockPaperScissorsTest do
	use ExUnit.Case
	doctest Games.RockPaperScissors
	alias Games.RockPaperScissors

  test "beats/2 rock beats scissors" do
    assert RockPaperScissors.beats?("rock", "scissors")
  end
  test "beats/2 paper beats rock" do
    assert RockPaperScissors.beats?("paper", "rock")
  end
  test "beats/2 scissors beats paper" do
    assert RockPaperScissors.beats?("scissors", "paper")
  end
  test "beats/2 paper beats scissors" do
    refute RockPaperScissors.beats?("paper", "scissors")
  end
  test "beats/2 scissors beats rock" do
    refute RockPaperScissors.beats?("scissors", "rock")
  end
  test "beats/2 rock beats paper" do
    refute RockPaperScissors.beats?("rock", "paper")
  end
end
