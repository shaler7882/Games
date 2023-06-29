defmodule Games.Wordle do
  @moduledoc """
  Documentation for `Wordle`
  """

  @doc """

  Pick a word that is 5 characters long.

  It will be compared to the random word

  Will let you know if you are correct or not

  ## Examples

  You are now playing Wordle

  Enter a five letter word:  shawn
  "tarts"
  [:yellow, :grey, :yellow, :grey, :grey]

  Green = correct letter, incorrect spot
  Yellow = correct letter, incorrect spot
  Grey = incorrect letter, incorrect spot
  """
  @spec feedback(String.t(), String.t()) :: [atom()]
  def feedback(answer, guess) do
    answer_list = String.split(answer, "", trim: true)
    guess_list = String.split(guess, "", trim: true)

    join_lists = Enum.zip([guess_list, answer_list])

    Enum.map(join_lists, fn {guess_char, answer_char} ->
      cond do
        guess_char not in answer_list -> :grey
        guess_char == answer_char -> :green
        true -> :yellow
      end
    end)
    |> IO.inspect()
  end

  @spec play() :: String.t()
  def play() do
    player_guess =
      IO.gets("You are now playing Wordle\n\nEnter a five letter word:  ") |> String.trim()

    five_letter_word = Enum.random(["toast", "tarts", "hello", "beats"]) |> IO.inspect()
    feedback(five_letter_word, player_guess)
  end
end
