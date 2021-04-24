defmodule HelloNerves.LEDAdapter.Dev do
  defstruct [pin: 0, lit: false]
  require Logger

  def open(pin) do
    Logger.info("Opening #{ pin}")
    %__MODULE__{pin: pin} |> off()
  end
  
  def close(led) do
    Logger.info("Closing #{inspect(led)}")
  end

  def on(led) do
    Logger.info("Turning #{inspect(led)} on")
    %{led | lit: true}
  end
  
  def off(led) do
    Logger.info("Turning #{inspect(led)} off")
    %{led | lit: false}
  end

  def toggle(led, true = _on), do: on(led)
  def toggle(led, false = _on), do: off(led)
end

