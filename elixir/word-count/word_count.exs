defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    Enum.reduce matched_words_in(sentence), %{}, fn(word, acc) ->
        w = String.downcase(word)
        val = Map.get(acc, w) || 0
        Map.put(acc, w, val+1)
    end
  end

  defp matched_words_in(sentence) do
    items = Regex.scan(~r/[-a-zA-ZÀ-ÿ0-9]+/, sentence)
    List.flatten(items)
  end

end
