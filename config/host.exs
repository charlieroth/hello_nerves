import Config

adapter = 
  if Mix.env() == :test do
    HelloNerves.LEDAdapter.Test
  else
    HelloNerves.LEDAdapter.Dev
  end

# Add configuration that is only needed when running on the host here.
config :hello_nerves,
  pins: %{1 => 26, 2 => 19, 3 => 13},
  led_adapter: adapter

