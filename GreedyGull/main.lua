local background = display.newImageRect("background.png", display.contentWidth, display.contentHeight)
background.x = display.contentCenterX
background.y = display.contentCenterY

local gull = display.newImageRect("gull.png", 168.5, 72.5)
gull.x = display.contentCenterX
gull.y = display.contentCenterY

local physics = require("physics")
physics.start()
physics.addBody(background, "static", {bounce = 0})
physics.addBody(gull, "static", {radius = 80, bounce = 0})

local function pushGull()
  gull:applyLinearImpulse(0, -0.3, gull.x, gull.y)
end

gull:addEventListener("tap", pushGull)
