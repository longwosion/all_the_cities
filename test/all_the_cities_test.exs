defmodule AllTheCitiesTest do
  use ExUnit.Case
  doctest AllTheCities

  test "cities count" do
    cities = AllTheCities.load()
    assert Enum.count(cities) == 138_398
  end
end
