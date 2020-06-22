defmodule ElixirBlocksTest do
  use ExUnit.Case
  doctest ElixirBlocks

  test "greets the world" do
    assert ElixirBlocks.hello() == :world
  end
end
