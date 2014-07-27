class Player

  def initialize()#,flechas = 0)
    @rescate = "no"
    #@flechas = flechas
  end

  def play_turn(warrior)
    #      warrior.rest
    puts warrior.health
    #puts warrior.feel.empty?
    puts warrior.feel.captive?
    #ataques = 0
    #puts @ataques
    #puts flechas

    if warrior.feel(:backward).empty? and @rescate == "no"
      warrior.walk!(:backward)
      puts "No hay nadie atras entonces camino para atras"

    elsif warrior.feel(:backward).captive?
      warrior.rescue!(:backward)
      @rescate = "si"
      puts "Hay un prisionero atras entonces lo rescato"
      #warrior.feel.Archer?
    elsif warrior.health == 20 and warrior.feel.empty? and @rescate=="si"
      #if warrior.feel.empty?
      warrior.walk!
      puts "Mi salud esta al maximo entonces camino"

    elsif warrior.feel.captive?
      warrior.rescue!
      puts "Hay un prisionero entonces los rescato"

    elsif warrior.feel.empty? and @health > warrior.health and @rescate == "si" and @health > 12
      warrior.walk!
      puts "No hay nadie adelante pero me estan atacando entonces camino"
    
    elsif warrior.feel.empty? and @health > warrior.health and @rescate == "si" and @health < 12
      warrior.walk!(:backward)
      puts "No hay nadie adelante, tengo poca salud y me atacan, retrocedo! "
      #    flechas =+ 1 
      #Si no hay nadie adelante y no me atacan, descansa!
      #   elsif warrior.feel.empty? and warrior.health < 7 and @flechas > 2
      #     warrior.walk!(:backward)
      # Si tengo poca salud no hay nadie adelante y me atacan aun, retrocedo lo que puedo
    elsif warrior.feel.empty? and @rescate=="si"#and @health < warrior.health # warrior.health 

      warrior.rest! 
      puts "No hay nadie adelante y no me atacan entonces descanso"

      #Si la salud es <10 y hay alguien enfrente, retrocede
    elsif  warrior.health < 9  and @health > warrior.health
      #flechas =+ 1
      warrior.walk!(:backward)
      puts "Tengo poca salud, hay alguien en frente y me esta atacando entonces retrocedo"
      #Si no hay nadie y me estan atacando entonce walk!

    elsif warrior.feel.empty?
      warrior.walk!

    else

      warrior.attack!
      ataques =+ 1
      @ataques = ataques
      puts "Tengo a alguien enfrente entonces ataco!"
    end
    # @flechas=flechas
    @health = warrior.health
  end

end

