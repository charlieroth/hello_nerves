# HelloNerves

My hello world with Nerves


## Target

Raspberry Pi 4 Model B


## Getting Started

  * `export MIX_TARGET=rpi4` or prefix every command with `MIX_TARGET=rpi4`
  * Install dependencies with `mix deps.get`
  * Create firmware with `mix firmware`
  * Burn to an SD card with `mix firmware.burn`


## Connect To Target
  
  * `ssh nerves.local`


## Upgrading Firmware

While connected to `target` via ssh

  * Create a new firmware with `mix firmware`
  * Upload new firmware to available partition with `mix upload`
  * Drink some water, Reconnect to `target`


## Resources

  * [Official Docs](https://hexdocs.pm/nerves/getting-started.html)
  * [Official Website](https://nerves-project.org/)
  * [Forum](https://elixirforum.com/c/nerves-forum)
  * [Source](https://github.com/nerves-project/nerves)
