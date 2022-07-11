defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the coverted list" do
      assert FizzBuzz.build("numbers.txt") === {:ok, [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz]}
    end

    test "when an invalid file is provided, returns the error" do
      assert FizzBuzz.build("test.txt") === {:error, "Erro ao ler o arquivo enoent"}
    end
  end
end
