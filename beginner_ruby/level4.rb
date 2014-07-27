class Player

  def initialize
    @health=20
  end

  def play_turn(warrior)

      if warrior.feel.empty? and !im_attacked(warrior)
        if warrior.health==20        
          warrior.walk!
         else
          warrior.rest!
        end

      elsif warrior.feel.empty? and im_weak(warrior) 
        if im_attacked(warrior)
          warrior.shoot!
        else
          warrior.walk!(:backwards)
        end
      else
        warrior.attack!
      end
      
    @health = warrior.health
  end

  def im_weak(warrior)
    @health<9
  end

  def im_attacked(warrior)
    warrior.health < @health
  end

end


