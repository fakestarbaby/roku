local logger = require "lib.logger"

if SETTINGS.DEBUG then
  logger.setLevel(SETTINGS.LOGGER.LEVEL)
else
  logger.setLevel(logger.LEVEL.RELEASE)
end
