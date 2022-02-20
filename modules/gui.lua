-- Start point
widgets = {}



--- Start Widget
function newWidget(id,x,y,w,h)
  table.insert(widgets,{id = id,x = x,y = y,w = w,h = h,hidden = false})
  print("Made widget with the ID of: "..id)
end

function drawWidgets()
  for k,v in ipairs(widgets) do
    if not v.hidden then
      love.graphics.rectangle("fill", v.x, v.y, v.w, v.h)
    end
  end
end

function changeWidgetPS(id,x,y,w,h)
  for k,v in ipairs(widgets) do
    if id == v.id then
      v.x = x
      v.y = y
    if w == nil and h == nil then
      -- Do not change width and height
    else
      v.w = w
      v.h = h
    end
    end
  end
end

function showWidget(id)
  for k,v in ipairs(widgets) do
    if id == v.id then
      v.hidden = false
    end
  end
end


function hideWidget(id)
  for k,v in ipairs(widgets) do
    if id == v.id then
      v.hidden = true
    end
  end
end
