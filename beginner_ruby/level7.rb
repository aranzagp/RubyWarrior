class Player

  def initialize(rescate = "no")
    @rescate = rescate
  end

  def play_turn(warrior)
    puts warrior.health
    puts warrior.feel.captive?
    
    if warrior.feel.wall?
      warrior.pivot!
      puts "La pared esta enfrente entonces me volteo"

    elsif warrior.health == 20 and warrior.feel.empty? #and @rescate=="si"
      warrior.walk!
      puts "Mi salud esta al maximo entonces camino"
    
    elsif warrior.feel.empty? and @health <= warrior.health # warrior.health 
      warrior.rest! 
      puts "No hay nadie adelante y no me atacan entonces descanso"

    elsif warrior.feel.empty? and warrior.health < 9  and @health > warrior.health
      warrior.walk!(:backward)
      puts "Tengo poca salud, hay alguien en frente y me esta atacando entonces retrocedo"

    elsif warrior.feel.empty?
      warrior.walk!

    else

      warrior.attack!
      puts "Tengo a alguien enfrente entonces ataco!"
    end
    @health = warrior.health
  end

end

