function love.load()
require("modules.gui")
end

function love.draw()
  if not widgets == nil then
    drawWidgets()
  else
    -- DEBUG WHEN NO WIDGETS TO DRAW
    love.graphics.print("NO WIDGETS TO DRAW",0,0)
  end
  if not buttons == nil then
    drawButtons()
  else
    love.graphics.print("NO BUTTONS TO DRAW",0,15)
  end
end

function love.update(dt)

end
