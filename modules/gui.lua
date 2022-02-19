-- Start point
widgets = {}
-- Modules with in a widget
buttons = {}



--- Start Widget
function newWidget(id,x,y,w,h)
  table.insert(widgets,{id = id,x = x,y = y,w = w,h = h,hidden = false})
end

function drawWidgets()
  for k,v in ipairs(widgets) do
    if not v.hidden then
      love.graphics.rectangle("fill", v.x, v.y, v.w, v.h)
    end
  end

end

function showWidget(id)
  for k,v in ipairs(widgets) do
    if id == v.id then
      v.hidden = false
    else
      v.hidden = false
      print("ID: "..id..", does not exist!")
    end
  end
end


function hideWidget(id)
  for k,v in ipairs(widgets) do
    if id == v.id then
      v.hidden = true
    else
      v.hidden = false
      print("ID: "..id..", does not exist!")
    end
  end
end
-- END WIDGET

-- START BUTTONS

function newButton(id,text,x,y,w,h,fn,pw_id)
  table.insert(buttons,{id = id,text = text, x = x,y = y, w = w, h = h, fn = fn,pw_id = pw_id,hidden = false})
end

function drawButtons()
  for k,v in ipairs(buttons) do
    if v.hidden == false then
      love.graphics.rectangle("fill", v.x, v.y, v.w, v.h)
    end
  end
end
