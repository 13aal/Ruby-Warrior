class Player
  @last_known_health = nil
  
  def play_turn(warrior)
    @last_known_health = warrior.health unless @last_known_health
    
    if warrior.feel.captive?
      warrior.rescue!
    end
    if warrior.feel.empty? == true
      if warrior.health >= @last_known_health
      warrior.walk!
    elsif warrior.health < 15
      warrior.rest!
    else
      warrior.attack!
    end
  end
end
