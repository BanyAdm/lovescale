# lovescale
a Scaling Module made for LÖVE2D

how to use scale.lua

```lua
function love.load()
  
  Virtual_Width = 856 --the height your game works on
  Virtual_Height = 352 --the width your game works on
  
  require("scale") --make sure to put the correct path
end

function love.update(dt)
  t = love.touch.getTouches() --how to convert x/y from screen to virtual resolution
  
  for i,touch in pairs(t) do
    touchx, touchy = love.touch.getPosition(touch)
    
    local vx, vy = scale:stv(touchx, touchy, vw, vh) -- x/y screen to virtual function
  end
end

function love.draw()
  scale:push(Virtual_Width, Virtual_Height) --push
  
   love.graphics.rectangle("fill",100,100,50,50) --every drawable you wanna scale globally
  
  scale:pop() --pop
end
```
