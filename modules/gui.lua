widgets = {}
buttons = {}
graphic_buttons = {}
radio_buttons = {}
textboxes = {}
labels = {}


button_text_font = love.graphics.newFont(32)

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
---- START LABEL
function newLabel(text,x,y,pw_id)
  table.insert(labels,{id = text, text = text, x = x, y = y, pw_id = pw_id, hidden = false})
end

function drawLabels()
  for k,v in ipairs(labels) do
    if not v.hidden then
      love.graphics.print(v.text,v.x,v.y)
    end
  end
end

-- start buttons

function newButton(id,text,x,y,w,h,pw_id)
  table.insert(buttons,{id = id, text = text,x = x,y = y, w = w, h = h,pw_id,hidden = false})
  print("Button with the ID: "..id.." : has been created!")
end

function drawButtons()
  for k,v in ipairs(buttons) do
    love.graphics.setFont(button_text_font)
    textWidth = button_text_font:getWidth(v.text)
    textHeight =  button_text_font:getHeight(v.text)
    if not v.hidden then
      love.graphics.rectangle("fill", v.x, v.y, v.w, v.h)
      love.graphics.print(v.text,(v.w/2)-(textWidth/2),(v.h/2)-(textHeight/2))
    end
  end
end

function hideButton(id)
  for k,v in ipairs(buttons) do
    if id == v.id then
      v.hidden = true
    end
  end
end

function showButton(id)
  for k,v in ipairs(buttons) do
    if id == v.id then
      v.hidden = false
    end
  end
end

--- Graphic Button

function newGButton(id,img_off,img_on,x,y,w,h,pw_id)
  table.insert(graphic_buttons,{id = id,img_off = img_off, img_on = img_on,x = x,y = y,w = w,h = h,pw_id = pw_id,hidden = false})
  print("Graphic Button "..id.." has been made!")
end

function drawGButtons()

end

function hideGButton(id)
  for k,v in ipairs(graphic_buttons) do
    if id == v.id then
      v.hidden = true
    end
  end
end

function showGButton(id)
  for k,v in ipairs(graphic_buttons) do
    if id == v.id then
      v.hidden = false
    end
  end
end
