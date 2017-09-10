defmodule ElixirPythonQrcodeTest do
  use ExUnit.Case
  doctest ElixirPythonQrcode

  test "greets the world" do
    assert ElixirPythonQrcode.greetings("World") == "Hello World"
  end
  test "encode" do
    file = "helloworld.png"
    data = "Hello World"

    ElixirPythonQrcode.encode(data, file) == 0

    decoded = ElixirPythonQrcode.decode(file)
    assert data == decoded |> to_string()
  end
end
