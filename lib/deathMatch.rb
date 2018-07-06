require_relative 'attack'
require_relative 'selectHero'

class DeathMatch
  def mode (hero1,hero2)
    while (hero1.hp > 0 && hero2.hp >  0) do
      attacker, defender = SelectHero.heroSelect(hero1,hero2)
      Attack.attack(attacker, defender)
      if(attacker.hp < 0 || defender.hp < 0)
        puts "Game over"
        puts  "#{attacker.name} has won with #{attacker.hp} hp left"
      end
    end
  end   
end