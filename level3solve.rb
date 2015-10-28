
class Player
	Min_health = 15
	
	def play_turn(warrior)
		if warrior.feel.empty?
			if warrior.health < Min_health
				warrior.rest!
			else
				warrior.walk!
			end
		else
			warrior.attack!
		end
	end
end
