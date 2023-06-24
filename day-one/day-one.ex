defmodule DayOne do
  def greet(name) do
    message = "Hello " <> name
    IO.puts(message)
  end
  
  def readlines(filepath) do
    # a comment
    case File.read(filepath) do
      {:ok, contents} -> 
        IO.binread(contents)
    end
  end
end

DayOne.readlines("input.txt")

