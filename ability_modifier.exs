user_input = IO.gets("Write your ability score:\n")

result =
  case Integer.parse(user_input) do
    {ability_score, _} when ability_score >= 0 ->
      ability_modifier = (ability_score - 10) / 2
      "Your ability modifier is #{ability_modifier}"

    _ ->
      "Invalid ability score: #{user_input}"
  end

IO.puts(result)
