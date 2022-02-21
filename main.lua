function love.load()
require("modules.gui")
newWidget("job_setup",250,250,200,200,"fill")
newButton("js_exit","Exit",0,0,100,50,"job_setup")
end

function love.draw()
drawWidgets()
drawButtons()
end

function love.update(dt)
  ww,wh = love.graphics.getDimensions()
  for k,v in ipairs(widgets) do
    if v.id == "job_setup" then
      wid_w = v.w
      wid_h = v.h
    end
  end
  changeWidgetPS("job_setup",(ww/2)-(wid_w/2),(wh/2)-(wid_h/2))
  if love.keyboard.isDown("p") then
    hideWidget("job_setup")
    hideButton("js_exit")
  end
  if love.keyboard.isDown("k") then
    showWidget("job_setup")
    showButton("js_exit")
  end
end
