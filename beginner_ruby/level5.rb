class Player

  def play_turn(warrior)
    # add your code here
    #if @health < warrior.health
     # warrior.rest!
#    if warrior.health == 20 
#      warrior.rest!

puts warrior.health
#puts warrior.feel.empty?
puts warrior.feel.captive?

    if warrior.health == 20 and warrior.feel.empty?
    #if warrior.feel.empty?
      warrior.walk!
    #elsif @health > warrior.health
     # warrior.walk!
     #Si no hay nadie adelante y me atacan, camina!
      puts "Mi salud esta al maximo entonces camino"

    elsif warrior.feel.captive?
      warrior.rescue!
      puts "Hay un prisionero entonces los rescato"

    elsif warrior.feel.empty? and @health > warrior.health
      warrior.walk!
      puts "No hay nadie adelante pero me estan atacando entonces camino"
    
    #Si no hay nadie adelante y no me atacan, descansa!
    elsif warrior.feel.empty? #and @health < warrior.health # warrior.health 

      warrior.rest! 
      puts "No hay nadie adelante y no me atacan entonces descanso"

      #Si la salud es <10 y hay alguien enfrente, retrocede
    elsif  warrior.health < 7  and @health > warrior.health

      warrior.walk!(:backward)
      puts "Tengo poca salud, hay alguien en frente y me esta atacando entonces retrocedo"
#Si no hay nadie y me estan atacando entonce walk!

    elsif warrior.feel.empty?
      warrior.walk!
    
    else

    warrior.attack!

    puts "Tengo a alguien enfrente entonces ataco!"
    end
    
    @health = warrior.health
  end

end

