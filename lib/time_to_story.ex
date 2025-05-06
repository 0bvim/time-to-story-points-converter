defmodule TimeToStory do
  @moduledoc """
  `TimeToStory` is a CLI module that takes a time input in `HH.MM` format
  and converts the minutes into a proportional value based on a 100-minute scale,
  while keeping the hours unchanged.

  ## Example

      # 1 hour 40 minutes = 1 hour 67% (out of 100 minutes)
      $ ./time_to_story 1.40
      Proportional value (with respect to 100): 1.67

      # 1 hour 59 minutes = 1 hour 98% (out of 100 minutes)
      $ ./time_to_story 1.59
      Proportional value (with respect to 100): 1.98
  """

  @doc """
  Parses a time input string (e.g., `"1.15"`) where the integer part is hours
  and the decimal part is minutes (00–59), converts the minutes to a 100-minute scale,
  and returns the proportional value.

  ## Parameters

    - `args`: A list with a single string representing the time in `HH.MM` format.

  ## Output

    Prints the proportional value to stdout.

  ## Examples

      iex> TimeToStory.main(["1.15"])
      Proportional value (with respect to 100): 1.25

      iex> TimeToStory.main(["0.40"])
      Proportional value (with respect to 100): 0.67

      iex> TimeToStory.main(["2.75"])
      Invalid input. Format must be HH.MM where MM is 00–59.
  """
  def main([input]) do
    case String.split(input, ".") do
      [h_str, m_str] ->
        with {h, _} <- Integer.parse(h_str),
             {m, _} <- Integer.parse(m_str),
             true <- m in 0..59 do
          proportional_minutes = m * 100 / 60
          total = h + proportional_minutes / 100
          IO.puts("Proportional value (with respect to 100): #{Float.round(total, 2)}")
        else
          _ -> IO.puts("Invalid input. Format must be HH.MM where MM is 00–59.")
        end

      _ ->
        IO.puts("Usage: time_to_story <HH.MM>")
    end
  end
end
