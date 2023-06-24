

defmodule DayOne do

  def greet(name) do
    message = "Hello " <> name
    IO.puts(message)
  end
  

end

DayOne.greet("World!")

