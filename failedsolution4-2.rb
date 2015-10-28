class Player
  @last_known_health = 15 #changed the variable for easier reading
  
  def play_turn(warrior)
    if warrior.health < @last_known_health
      warrior.walk!
    else
      warrior.rest!
    end
  else
    if warrior.feel.empty? == false
      warrior.attack!
    end
  end
end
