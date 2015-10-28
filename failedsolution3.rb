class Player
  
  def play_turn
    if warrior.feel.empty? && warrior.health >= 15
      warrior.walk!
    else
      warrior.rest!
    end
    else
      warrior.attack!
    end
  end
end
#This was my first solution to level 3
