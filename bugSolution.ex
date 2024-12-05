```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      raise "Process should not exit here"
    end
    IO.puts(x)
  end)
rescue
  e -> IO.puts("Exception caught: #{inspect(e)}")
end

#Alternative solution using Enum.map
Enum.map(list, fn x ->
  if x == 3 do
    :error #or any sentinel value for error handling
  else
    IO.puts(x)
    x
  end
end)
```