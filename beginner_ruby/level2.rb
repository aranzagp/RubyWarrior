class Player

  def play_turn(warrior)

      if warrior.feel.empty? 
          warrior.walk!
      else
          warrior.attack!
      end
      
    @health = warrior.health
  end


end

