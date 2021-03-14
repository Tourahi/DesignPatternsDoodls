local Command = require("command.Command");
local musicOncommand = Command:extend();

function musicOncommand:new(Music)
  self.music = Music;
end

function musicOncommand:execute()
  self.music:on();
end

return musicOncommand;
