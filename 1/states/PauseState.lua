PauseState = Class{}

function PauseState.load()
	game_paused = false
end

function PauseState.update()
	if game_paused == false then 
		scrolling = false
	elseif game_paused == tree then 
		scrolling = true
	end

	if love.keyboard.wasPressed('p') then 
		game_paused = true
		if love.keyboard.wasPressed('p') and game_paused == true then
			game_paused = false
		end
	end
end