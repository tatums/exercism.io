defmodule Teenager do

  def hey(input) do
    cond do
      silent?(input) -> "Fine. Be that way!"
      question?(input) -> "Sure."
      shouting?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  defp silent?(input) do
    "" == String.strip(input)
  end

  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp shouting?(input)  do
    Regex.match?(~r/\p{L}+/, input) && String.equivalent?(String.upcase(input), input)
  end

end
