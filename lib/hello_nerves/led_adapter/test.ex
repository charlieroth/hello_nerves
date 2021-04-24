defmodule HelloNerves.LEDAdapter.Test do
  defstruct [pin: 0, lit: false, history: []]
  require Logger

  def open(pin) do
    Logger.info("Opening #{ pin}")
    %__MODULE__{pin: pin, history: [:open]} |> off()
  end
  
  def close(led) do
    Logger.info("Closing #{inspect(led)}")
  end

  def on(led) do
    Logger.info("Turning #{inspect(led)} on")
    %{led | lit: true, history: [:on | led.history]}
  end
  
  def off(led) do
    Logger.info("Turning #{inspect(led)} off")
    %{led | lit: false, history: [:off | led.history]}
  end

  def toggle(led, true = _on), do: on(led)
  def toggle(led, false = _on), do: off(led)

  def history(led), do: Enum.reverse(led.history)
end


