local Music = Object:extend();

function Music:new(type)
  self.type = type;
end

function Music:on()
  print(self.type .. " is playing.");
end

function Music:off()
  print(self.type .. " stopped playing.");
end

return Music;
