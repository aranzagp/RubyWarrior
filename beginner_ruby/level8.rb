class Player

  def play_turn(warrior)
    puts warrior.look.first.to_s #"primer elemento"
    puts warrior.look.at(1).to_s #"segundo elemente"
    
    if warrior.feel.empty? and array.at(1).to_s =="Captive"
      warrior.walk!
      puts "No hay nadie adelante, camino!" 

      elsif warrior.feel.captive?
        warrior.rescue!
        puts "Hay un prisionero, lo rescato"

      elsif warrior.look.at(1).to_s == "Wizard" and warrior.feel.empty?
        warrior.shoot!

      else
        warrior.walk!

    end
    @health = warrior.health
  end

end

