Powerup = Class{}

function Powerup:init(skin)
	self.width = 16
	self.height = 16

	self.dy = 20 

	self.skin = skin

	self.inPlay = true
end

function Powerup:update(dt)
	self.y = self.y + self.dy * dt
end

function Powerup:render()
	love.graphics.draw(gTextures['main'], gFrames['powerup'][self.skin], self.x, self.y)
end

function Powerup:collides(target)
	if self.x > target.x + target.width or self.x + self.width < target.x then 
		return false 
	end

	if self.y > target.y + target.height or self.y + self.height < target.y then 
		return false
	end

	return true
end