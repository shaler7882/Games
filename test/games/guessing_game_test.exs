defmodule Games.GuessingGameTest do
  use ExUnit.Case
  doctest Games.GuessingGame
  alias Games.GuessingGame

  test "winner/2 you win" do
    assert GuessingGame.winner(5, 5) == true
  end
	test "winner/2 you lose" do
    assert GuessingGame.winner(5, 6) == false
  end
end
