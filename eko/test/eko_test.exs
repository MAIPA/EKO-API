defmodule EkoTest do
  use ExUnit.Case
  doctest Eko

  test "greets the world" do
    assert Eko.hello() == :world
  end
end
