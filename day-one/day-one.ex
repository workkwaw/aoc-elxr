defmodule DayOne do
  def readlines(filepath) do
    case File.read(filepath) do
      {:ok, contents} -> contents |> String.split("\n") |> Enum.map(fn x -> case Integer.parse(x) do {num, ""} -> num; :error -> -1 end end) |> Enum.chunk_by(&(&1 < 0)) 
    end
  end

  def findElf(filepath) do
    readlines(filepath) |> Enum.max_by(&(Enum.sum(&1))) |> Enum.sum
  end
end

IO.puts("#{DayOne.findElf("input.txt")}")

