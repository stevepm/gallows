defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  import GallowsWeb.Views.Helpers.GameStateHelper

  def new_game_button(conn) do
    button("New Game", to: hangman_path(conn, :create_game))
  end

  def game_over?(:lost), do: true
  def game_over?(:won), do: true
  def game_over?(_), do: false

  def words_so_far(letters) do
    letters
    |> Enum.join(" ")
  end
end
