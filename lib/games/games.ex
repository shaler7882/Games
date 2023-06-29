defmodule Games do
  @moduledoc """
  Documentation for `Games`
  """

  @doc """

  From inside the games folder
      .games/

  ## Examples
  
      shaler@DESKTOP-MN8ANQI:~/games$ ./games
  """
  def main(args) do
    {opts, _word, _errors} = OptionParser.parse(args, switches: [number: :string])

    game =
      opts[:number] ||
        IO.gets(
          "What game would you like to play?\n1. Guessing Game\n2. Rock Paper Scissors\n3. Wordle\n\nenter stop to exit "
        )
        |> String.trim()

    game_choice(game)
  end

  def game_choice(game) do
    case game do
      "1" -> Games.GuessingGame.play()
      "2" -> Games.RockPaperScissors.play()
      "3" -> Games.Wordle.play()
      _ -> "Game has stopped"
    end

    unless game == "stop" do
      main([])
    end
  end
end
