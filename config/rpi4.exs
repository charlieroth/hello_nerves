import Config

# Add configuration that is only needed when running on the host here.
config :hello_nerves,
  pins: %{1 => 26, 2 => 19, 3 => 13},
  led_adapter: HelloNerves.LEDAdapter.Embed
