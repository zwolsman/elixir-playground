# Create an expression that solves the following problem: Sarah has bought ten slices of bread for ten cents each, three bottles of milk for two dollars each, and a cake for fifteen dollars. How many dollars has Sarah spent?

bread = 10
bread_price = 0.1

milk = 3
milk_price = 2

cake = 1
cake_price = 15

total_price = bread * bread_price + milk * milk_price + cake * cake_price

IO.puts("The total price Sarah spent is $#{total_price}")

# Bob has traveled 200 km in four hours. Using variables, print a message showing his travel distance, time, and average velocity.

distance = 200
time = 4

average_velocity = distance / 4

IO.puts("Bob has traveled with an average of #{average_velocity} km/h")

# Build an anonymous function that applies a tax of 12% to a given price. It should print a message with the new price and tax value. Bind the anonymous function to a variable called apply_tax. You should use apply_tax with Enum.each/2, like in the following example.

apply_tax = fn price ->
  taxed_price = price * 1.12
  IO.puts("Price: #{taxed_price} - Tax: #{taxed_price - price}")
end

Enum.each([12.5, 30.99, 250.49, 18.80], apply_tax)

defmodule MatchstickFactory do
  @big 50
  @medium 20
  @small 5

  def boxes(amt) do
    {big_box, amt} = divide(amt, @big)
    {medium_box, amt} = divide(amt, @medium)
    {small_box, amt} = divide(amt, @small)
    %{big: big_box, medium: medium_box, small: small_box, remaning: amt}
  end

  defp divide(dividend, divisor), do: {div(dividend, divisor), rem(dividend, divisor)}
end
