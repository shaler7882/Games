defmodule Games.WordleTest do
  use ExUnit.Case
  doctest Games.Wordle
  alias Games.Wordle

  test "feedback/2 all green" do
    assert Wordle.feedback("shawn", "shawn") == [:green, :green, :green, :green, :green]
  end

  test "feedback/2 all yellow" do
    assert Wordle.feedback("shawn", "nwhas") == [:yellow, :yellow, :yellow, :yellow, :yellow]
  end

  test "feedback/2 all grey" do
    assert Wordle.feedback("shawn", "bobby") == [:grey, :grey, :grey, :grey, :grey]
  end
  test "feedback/2 mixed" do
    assert Wordle.feedback("shawn", "haler") == [:yellow, :yellow, :grey, :grey, :grey]
  end
end
