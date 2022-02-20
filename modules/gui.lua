widgets = {}

buttons = {}
graphic_buttons = {}
radio_buttons = {}
textboxes = {}
labels = {}



--- Start Widget
function newWidget(id,x,y,w,h,mode)
  table.insert(widgets,{id = id,x = x,y = y,w = w,h = h,mode = mode,hidden = false})
  print("Made widget with the ID of: "..id)
  if id == nil or x == nil or y == nil or w == nil or h == nil then
    error("One or more variable is nil")
  end
end

function drawWidgets()
  for k,v in ipairs(widgets) do
    if not v.hidden then
      love.graphics.rectangle(v.mode, v.x, v.y, v.w, v.h)
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
