function love.load()
require("modules.gui")
newWidget("job_setup",250,250,100,100)

end

function love.draw()
drawWidgets()
end

function love.update(dt)
  ww,wh = love.graphics.getDimensions()
  changeWidgetPS("job_setup",(ww/2),wh/2)
  if love.keyboard.isDown("p") then
    hideWidget("2")
  end
  if love.keyboard.isDown("k") then
    showWidget("2")
  end
end
