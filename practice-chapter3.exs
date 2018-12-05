# In RPGs, players have points to spend on their character attributes. Create a function that returns the total number of points players have spent on their characters. The function will receive a map containing the strength, dexterity, and intelligence values. Each point in strength should be multi- plied by two, and dexterity and intelligence should be multiplied by three.

defmodule RPGs do
  def points_spent(%{:strength => str, :dexterity => dex, :intelligence => int}),
    do: str * 2 + (dex + int) * 3
end

input = %{strength: 5, dexterity: 2, intelligence: 3}

IO.inspect(input)
IO.puts("Points spent: #{RPGs.points_spent(input)}")
