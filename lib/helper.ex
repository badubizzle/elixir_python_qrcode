defmodule ElixirPythonQrcode.Helper do
  @doc """
  Start Python process.

          ## Parameters
    - path: directory to include in python path (charlist)
  ## Example

  """
  def python_instance(path) when is_list(path) do
    {:ok, pid} = :python.start([{:python_path, to_charlist(path)}])
    pid
  end

  def python_instance(_) do
    {:ok, pid} = :python.start()
    pid
  end

  @doc """
  Call python using MFA format
  """
  def call_python(pid, module, function, arguments \\ []) do
    pid
    |>:python.call(module, function, arguments)

  end
end