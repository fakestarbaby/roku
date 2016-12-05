local Logger = require "lib.logger"

if SETTINGS.DEBUG then
  Logger.setLevel(SETTINGS.LOGGER.LEVEL)
else
  Logger.setLevel(Logger.LEVEL.RELEASE)
end
