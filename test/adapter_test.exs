defmodule AdapterTest do
  use ExUnit.Case

  test "Picks up testing adapter" do
    assert Application.get_env(:hello_nerves, :led_adapter) == HelloNerves.LEDAdapter.Test
  end
end

