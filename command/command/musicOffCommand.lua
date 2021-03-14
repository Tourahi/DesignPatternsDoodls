local Command = require("command.Command");
local musicOffcommand = Command:extend();

function musicOffcommand:new(Music)
  self.music = Music;
end

function musicOffcommand:execute()
  self.music:off();
end

return musicOffcommand;
