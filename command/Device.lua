local Device = Object:extend();

function Device:new()
  self.onCommands = {};
  self.offCommands = {};
  self.slots = 3;
end

function Device:setCommand(slot, onCommand , offCommand)
  if (onCommand ~= nil and offCommand ~= nil) then
    self.onCommands[slot] = onCommand;
    self.offCommands[slot] = offCommand;
  end
end

function Device:activateSlot(slot)
  self.onCommands[slot]:execute();
end

function Device:deactivateSlot(slot)
  self.offCommands[slot]:execute();
end

return Device;
