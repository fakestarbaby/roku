local aspectRatio = display.pixelHeight / display.pixelWidth

application =  {
  content = {
    width  = 1.5 < aspectRatio and 320 or 480 / aspectRatio,
    height = aspectRatio < 1.5 and 480 or 320 * aspectRatio,
    fps    = 60,
    scale  = "letterBox",
    xAlign = "center",
    yAlign = "center",
    imageSuffix = {
      ["@2"] = 1.5,
      ["@4"] = 3.0,
    },
  },
}
