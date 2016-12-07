local Logger = require "lib.logger"
local Composer = require "composer"

local Scene = Composer.newScene()

local View = require("app.views.splash_screen_view").new()

function Scene:addSystemEventListener()
  function Scene.splashScreenSystemEventListener(event)
    if event.type == "applicationSuspend" then
      Logger.debug(event.type)
    elseif event.type == "applicationResume" then
      Logger.debug(event.type)
    end
  end
  Runtime:addEventListener("system", Scene.splashScreenSystemEventListener)
end

function Scene:removeSystemEventListener()
  Logger.debug("Scene:removeSystemEventListener")

  Runtime:removeEventListener("system", Scene.splashScreenSystemEventListener)
end

function Scene:create(event)
  local group = self.view
  Logger.debug(event.name)

  group:insert(View)
end

function Scene:show(event)
  local group = self.view
  local phase = event.phase
  Logger.debug(string.format("%s: %s", event.name, phase))

  if phase == "will" then
  elseif phase == "did" then
    Scene:addSystemEventListener()
  end
end

function Scene:hide(event)
  local group = self.view
  local phase = event.phase
  Logger.debug(string.format("%s: %s", event.name, phase))

  if phase == "will" then
    Scene:removeSystemEventListener()
  elseif phase == "did" then
  end
end

function Scene:destroy(event)
  local group = self.view
  Logger.debug(event.name)
end

Scene:addEventListener("create",  Scene)
Scene:addEventListener("show",    Scene)
Scene:addEventListener("hide" ,   Scene)
Scene:addEventListener("destroy", Scene)

return Scene
