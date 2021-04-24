defmodule HelloNerves do
  alias Circuits.GPIO

  def ping() do
    IO.puts("pong")
  end

  def blink_lights() do
    pins = [26, 19, 13]
    leds = Enum.map(pins, fn pin ->
      GPIO.open(pin, :output) |> elem(1)
    end)
    Enum.each(leds, fn led -> blink(led) end)
  end

  def blink(led) do
    GPIO.write(led, 1)
    Process.sleep(2000)
    GPIO.write(led, 0)
  end

  def close_pins() do
    pins = [26, 19, 13]
    Enum.map(pins, fn pin -> GPIO.close(pin) end)
  end

  def hello() do
    :world
  end
end
