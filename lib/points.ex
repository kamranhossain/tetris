defmodule Tetris.Points do
  def translate(points, {x, y}) do
    Enum.map(points, fn {dx, dy} -> {dx + x, dy + y} end)
  end

  defp transpose(points) do
    points
    |> Enum.map(fn {x, y} -> {y, x} end)
  end

  defp mirror(points) do
    points
    |> Enum.map(fn {x, y} -> {4 - x, y} end)
  end

  defp flip(points) do
    points
    |> Enum.map(fn {x, y} -> {x, 4 - y} end)
  end

end
