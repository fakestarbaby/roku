local View = {}

local Logger = require "lib.logger"
local Widget = require("widget")

function View.new()
  Logger.debug("new")

  local view = display.newGroup()

  view.background = display.newRect(view, 0, 0, display.contentWidth, display.contentHeight)
  view.background.anchorX = 0
  view.background.anchorY = 0
  view.background:setFillColor(SETTINGS.SPLASH_SCREEN.BACKGROUND.COLOR.R, SETTINGS.SPLASH_SCREEN.BACKGROUND.COLOR.G, SETTINGS.SPLASH_SCREEN.BACKGROUND.COLOR.B)

  return view
end

return View
