defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  import GallowsWeb.Views.Helpers.GameStateHelper

  def new_game_button(conn) do
    button("New Game", to: hangman_path(conn, :create_game))
  end

  def turn(left, target) when target >= left do
    "opacity: 1"
  end

  def turn(_left, _target) do
    "opacity: 0.1"
  end

  def game_over?(:lost), do: true
  def game_over?(:won), do: true
  def game_over?(_), do: false

  def words_so_far(letters) do
    letters
    |> Enum.join(" ")
  end
end
