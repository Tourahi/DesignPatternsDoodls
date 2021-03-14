Object = require("libs.classic");

local Music = require("hardware.Music");
local Device = require("Device");
local musicOnCommand = require("command.musicOnCommand");
local musicOffCommand = require("command.musicOffCommand");


local D1 = Device();
local music = Music("Metal");
D1:setCommand(1, musicOnCommand(music), musicOffCommand(music));
D1:activateSlot(1);
-- D1:deactivateSlot(1);
