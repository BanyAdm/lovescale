scale = {}

function scale:getscale(vw,vh)
    sw, sh = love.graphics.getDimensions()

    scaleX = sw / vw
    scaleY = sh / vh
    scalemin = math.min(scaleX, scaleY)

    return scalemin
end


function scale:getoffset(vw,vh)
  scalemin = scale:getscale(vw,vh)
  
  offsetX = (sw - vw * scalemin) / 2
  offsetY = (sh - vh * scalemin) / 2
  return offsetX, offsetY
end


function scale:stv(x, y, vw, vh)
    scalemin = scale:getscale(vw,vh)
    offsetX, offsetY = scale:getoffset(vw,vh)
  
    return
        (x - offsetX) / scalemin,
        (y - offsetY) / scalemin
end

function scale:push(vw,vh)
  scalemin = scale:getscale(vw,vh)
  offsetX, offsetY = scale:getoffset(vw,vh)
  gf.push()
  gf.translate(offsetX, offsetY)
  gf.scale(scalemin,scalemin)
end

function scale:pop()
  gf.pop()
end

return scale