class Player

  def play_turn(warrior)
    puts warrior.health
    puts warrior.look
    puts warrior.look.first.to_s #"primer elemento"
    puts warrior.look.at(1).to_s #"segundo elemente"
    

      if warrior.look(:backward).at(2).to_s=="Archer" #and @arquero == "vivo"
        warrior.shoot!(:backward)
        puts "Me ataca un arquero, disparo!"

      elsif warrior.feel.empty? and @health > warrior.health# and  !warrior.look.at(1).to_s=="Wizard"
        warrior.rest!
        puts "Nadie me ataca y no hay nadie enfrente, descanso"

      elsif warrior.look.at(1).to_s=="Thick Sludge"
        warrior.shoot!

      elsif warrior.look.at(2).to_s == "Wizard" and warrior.feel.empty?
        warrior.shoot!

      elsif warrior.feel.empty?
        warrior.walk!
      
      elsif warrior.feel.captive?
        warrior.rescue!
        puts "Hay un prisionero, lo rescato"  

      elsif warrior.feel.wall?
        warrior.pivot!

      else
        warrior.shoot!

    end
    @health = warrior.health
  end

end


