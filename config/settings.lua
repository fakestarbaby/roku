local Logger = require "lib.logger"

SETTINGS = {
  DEBUG = true,

  LOGGER = {
    LEVEL = Logger.LEVEL.DEBUG,
  },

  GOOGLE_ANALYTICS = {
    APP_NAME = "",
    TRACKING_ID = "",
  },

  SPLASH_SCREEN = {
    BACKGROUND = {
      COLOR = { R = 0, G = 0, B = 0 },
    },
  },
}
