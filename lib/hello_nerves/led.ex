defmodule HelloNerves.LED do
  require Logger
  alias Circuits.GPIO

  def open(pin) do
    Logger.info("Opening #{ pin}")
    {:ok, led} = GPIO.open(pin, :output)
    led
  end
  
  def close(led) do
    Logger.info("Closing #{inspect(led)}")
    GPIO.close(led)
  end

  def on(led) do
    Logger.info("Turning #{inspect(led)} on")
    GPIO.write(led, 1)
    led
  end
  
  def off(led) do
    Logger.info("Turning #{inspect(led)} off")
    GPIO.write(led, 0)
    led
  end

  def cycle() do
    leds = [open(26), open(19), open(13)]

    leds = Enum.map(leds, fn led -> 
      on(led) 
      Process.sleep(2000)
      off(led)
    end)

    Enum.each(leds, fn led ->
      close(led)
    end)
  end
  
  def toggle(led, true = _on), do: on(led)
  def toggle(led, false = _on), do: off(led)
end
