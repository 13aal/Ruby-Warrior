class Player
  @last_known_health = nil #realized I messed up the health so I fixed it

  def play_turn(warrior)
    @last_known_health = warrior.health unless @last_known_health

    if warrior.feel.empty?
      if warrior.health < @last_known_health
        warrior.walk!
      elsif warrior.health < 13
        warrior.rest!
      else
        warrior.walk!
      end
    else
        warrior.attack!
      end
      if warrior.feel.captive? #tried moving it down here.. Still no go
        warrior.rescue!
      end

    @last_known_health = warrior.health
  end
end
