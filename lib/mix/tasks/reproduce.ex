defmodule Mix.Tasks.Reproduce do
  use Mix.Task

  @impl true
  def run([]) do
    if :erlang.function_exported(Foo, :__info__, 1) do
      IO.puts("Function #{Foo.__info__(:module)}.__info__/1 is exported.")
    else
      IO.puts("Function #{Foo.__info__(:module)}.__info__/1 is NOT exported.")
    end
  end
end
