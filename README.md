# roku

Framework for Corona SDK.

## Logger

```lua
-- Require logger
local logger = require "lib.logger"

-- Default: LEVEL.RELEASE
logger.setLevel(logger.LEVEL.DEBUG)

-- Output logs to console
logger.debug("This is debug message.")
logger.info("This is info message.")
logger.warn("This is warn message.")
logger.error("This is error message.")
logger.release("This is release message.")
```

```console
2016/12/06 08:01:38 [DEBUG] main.lua:8: This is debug message.
2016/12/06 08:01:38 [INFO] main.lua:9: This is info message.
2016/12/06 08:01:38 [WARN] main.lua:10: This is warn message.
2016/12/06 08:01:38 [ERROR] main.lua:11: This is error message.
2016/12/06 08:01:38 [RELEASE] main.lua:12: This is release message.
```

### Log Level

Only greater than or equal to the specified log level of log is output.

```lua
-- Log level: DEBUG < INFO < WARN < ERROR < RELEASE
logger.setLevel(logger.LEVEL.ERROR)
```

```console
2016/12/06 08:01:38 [ERROR] main.lua:11: This is error message.
2016/12/06 08:01:38 [RELEASE] main.lua:12: This is release message.
```
