class Player
  Min_health = 15
  @health
  
    def play_turn(warrior)
      
      if warrior.feel.empty?
        if warrior.health >= @health
          warrior.walk
        elsif @health < 12
          warrior.rest!
        else
          warrior.attack!
        end
      end
    end
  end
end
      
          
