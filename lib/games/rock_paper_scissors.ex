defmodule Games.RockPaperScissors do
  @moduledoc """
  Documentation for `Rock Paper Scissors`
  """

  @doc """

  Pick between rock, paper, or scissors. Compared to the random gererated output
  Will let you know if you are correct or not

  ## Examples

    You are now playing Rock Paper Scissors

  Choose one rock/paper/scissors: rock
  AI choice rock
  input rock
  It's a tie!
  """
  def play() do
    input =
      IO.gets("You are now playing Rock Paper Scissors\n\nChoose one rock/paper/scissors:\ ")
      |> String.trim()

    ai_choice = Enum.random(["rock", "paper", "scissors"])
    IO.puts("AI choice #{ai_choice}")
    IO.puts("input #{input}")

    cond do
      ai_choice == input -> IO.puts("It's a tie!")
      beats?(input, ai_choice) -> IO.puts("You win! #{input} beats #{ai_choice}.")
      beats?(ai_choice, input) -> IO.puts("You lose! #{ai_choice} beats #{input}.")
    end
  end

  def beats?(player1, player2) do
    {player1, player2} in [{"rock", "scissors"}, {"paper", "rock"}, {"scissors", "paper"}]
  end
end
