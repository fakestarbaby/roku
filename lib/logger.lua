local logger = {}

logger.LEVEL = { DEBUG = 1, INFO = 2, WARN = 3, ERROR = 4, RELEASE = 5 }

local LEVEL_NAMES = { "DEBUG", "INFO", "WARN", "ERROR", "RELEASE" }

local currentLevel = logger.LEVEL.RELEASE

local function puts(level, message)
  if level < currentLevel then return end

  local debugInfo = debug.getinfo(3)
  local logMessage = string.format("%s [%s] %s:%s: %s", os.date("%Y/%m/%d %H:%M:%S"), LEVEL_NAMES[level], debugInfo.source:match("[^/]*$"), debugInfo.currentline, message)
  print(logMessage)
end

function logger.setLevel(level)
  currentLevel = level
end

function logger.debug(message)
  puts(logger.LEVEL.DEBUG, message)
end

function logger.info(message)
  puts(logger.LEVEL.INFO, message)
end

function logger.warn(message)
  puts(logger.LEVEL.WARN, message)
end

function logger.error(message)
  puts(logger.LEVEL.ERROR, message)
end

function logger.error(message)
  puts(logger.LEVEL.ERROR, message)
end

function logger.release(message)
  puts(logger.LEVEL.RELEASE, message)
end

return logger
