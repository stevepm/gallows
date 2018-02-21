defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  def words_so_far(letters) do
    letters
    |> Enum.join(" ")
  end
end
