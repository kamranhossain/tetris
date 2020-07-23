defmodule BrickTest do
  use ExUnit.Case

  import Tetris.Brick

  test "Creates a new brick" do
    assert new_brick().name == :i
  end

  def new_brick do
    Tetris.Brick.__struct__()
  end
end
