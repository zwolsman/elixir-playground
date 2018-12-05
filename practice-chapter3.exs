# In RPGs, players have points to spend on their character attributes. Create a function that returns the total number of points players have spent on their characters. The function will receive a map containing the strength, dexterity, and intelligence values. Each point in strength should be multi- plied by two, and dexterity and intelligence should be multiplied by three.

defmodule RPGs do
  def points_spent(%{:strength => str, :dexterity => dex, :intelligence => int}),
    do: str * 2 + (dex + int) * 3
end

input = %{strength: 5, dexterity: 2, intelligence: 3}

IO.inspect(input)
IO.puts("Points spent: #{RPGs.points_spent(input)}")

#  Create a function that returns Tic-Tac-Toe game winners. You can repre- sent the board with a tuple of nine elements, where each group of three items is a row. The return of the function should be a tuple. When we have a winner, the first element should be the atom :winner, and the second should be the player. When we have no winner, the tuple should contain one item that is the atom :no_winner.
# TODO

# Create a function that calculates income tax following these rules: a salary equal or below $2,000 pays no tax; below or equal to $3,000 pays 5%; below or equal to $6,000 pays 10%; everything higher than $6,000 pays 15%.

defmodule Income do
  def tax(salary) when salary <= 2000, do: 0
  def tax(salary) when salary <= 3000, do: 0.05
  def tax(salary) when salary <= 6000, do: 0.1
  def tax(salary), do: 0.15

  def read_input() do
    input = IO.gets("Please enter your salary:\n")

    case Integer.parse(input) do
      {salary, _} ->
        salary

      _ ->
        IO.puts("Invalid input '#{String.trim(input)}'")
        read_input()
    end
  end
end

# Create an Elixir script where users can type their salary and see the income tax and the net wage. You can use the module from the previous exercise, but this script should parse the user input and display a message when users type something that is not a valid number.

salary = Income.read_input()
tax = Income.tax(salary)
net_wage = salary * (1 - tax)
IO.puts("Your net wage is #{net_wage}, the total tax is #{tax * 100}%")
