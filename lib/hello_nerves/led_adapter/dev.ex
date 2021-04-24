defmodule HelloNerves.LEDAdapter.Dev do
  defstruct [pin: 0, lit: false]
  require Logger
  alias HelloNerves.LEDAdapter
  @behaviour LEDAdapter

  @impl LEDAdapter
  def open(pin) do
    Logger.info("Opening #{ pin}")
    %__MODULE__{pin: pin} |> off()
  end
  
  @impl LEDAdapter
  def close(led) do
    Logger.info("Closing #{inspect(led)}")
  end
  
  @impl LEDAdapter
  def on(led) do
    Logger.info("Turning #{inspect(led)} on")
    %{led | lit: true}
  end
  
  @impl LEDAdapter
  def off(led) do
    Logger.info("Turning #{inspect(led)} off")
    %{led | lit: false}
  end
  
  @impl LEDAdapter
  def toggle(led, true = _on), do: on(led)
  
  @impl LEDAdapter
  def toggle(led, false = _on), do: off(led)
end
