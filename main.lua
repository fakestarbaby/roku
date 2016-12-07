require "config.application"

local Logger = require "lib.logger"
local Composer = require "composer"

display.setStatusBar(display.HiddenStatusBar)

local function startApplication(event)
end

Runtime:addEventListener("system", function(event)
  if event.type == "applicationStart" then
    Logger.debug(event.type)

    startApplication(event)
  elseif event.type == "applicationExit" then
    Logger.debug(event.type)
  end
end)
