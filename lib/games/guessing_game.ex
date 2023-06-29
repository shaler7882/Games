defmodule Games.GuessingGame do
  @moduledoc """
  Documentation for `Gussing Game`
  """

  @doc """

  Guess number from 1 to 10. Comparing it to the random generated number
  Will print out if you are correct or not


  ## Examples

     Now playing the Guessing Game

  Guess a number between 1 and 10: 5
  Random number 4
  guess number 5
  Incorrect!
  """

  def play() do
    random_number = Enum.random(1..10)

    guess =
      IO.gets("Now playing the Guessing Game\n\nGuess a number between 1 and 10:\ ")
      |> String.trim()
      |> String.to_integer()

    winner(guess, random_number)
    |> print_to_screen(guess, random_number)
  end

  def print_to_screen(tf, guess, random_number) do
    IO.puts("Random number #{random_number}")
    IO.puts("guess number #{guess}")

    if tf do
      IO.puts("#{IO.ANSI.green()}You win! #{IO.ANSI.reset()}")
    else
      IO.puts("#{IO.ANSI.red()}Incorrect! #{IO.ANSI.reset()}")
    end
  end

  def winner(guess, random_number) do
    guess == random_number
  end
end
