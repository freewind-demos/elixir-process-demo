# Elixir 进程
defmodule SpawnExample do
  def greet do
    IO.puts("Hello from new process!")
  end
end

pid = spawn(SpawnExample, :greet, [])
Process.sleep(1000)
IO.puts("Spawned process: #{inspect(pid)}")
