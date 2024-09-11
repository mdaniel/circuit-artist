local LevelComponent = require 'level_component'
local Clock = require 'clock'
local Sandbox = LevelComponent:extend()

function Sandbox:new()
  Sandbox.super.new(self)
  self.pins = {}
end

return {
    icon = "../luasrc/imgs/levels/sandbox_icon.png",
    name = 'Sandbox',
    desc = [[


!img:imgs/levels/sss.png

Sandbox mode. No objective.

You have a `clock` and a `power_on_reset` inputs.

The `clock` input allows you to create synchronous auto-update circuits.

The `power_on_reset` input allows you to initialize memory when applicable. It stays on (`1`) for the 2 first clock cycles, then it becomes off (`0`) forever.


]],
    chips = {
      Clock(),
      Sandbox(),
    }
}
