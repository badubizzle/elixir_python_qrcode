defmodule ElixirPythonQrcode do
  @moduledoc """
  Documentation for ElixirPythonQrcode.
  """
  alias ElixirPythonQrcode.Helper

  defp default_instance() do
    #Load all modules in our priv/python directory
    path = [:code.priv_dir(:elixir_python_qrcode), "python"] |> Path.join()
    Helper.python_instance(to_charlist(path))
  end

  # wrapper function to call python functions using
  # default python instance
  defp call_python(module, function, args \\ []) do
    default_instance()
    |> Helper.call_python(module, function, args)
  end

  def encode(data, filename) do
    call_python(:qrcode, :encode, [data, filename])
  end

  def decode(qr_file_path) do
    call_python(:qrcode, :decode, [qr_file_path])
  end

  def greetings(name) do
    call_python(:qrcode, :greetings, [name])
  end

end
