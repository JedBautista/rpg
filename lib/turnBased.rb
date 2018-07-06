require_relative 'attack'
require_relative 'selectHero'

class TurnBased
  def mode (hero1, hero2)
    n = 0
    while n < 5 do
      attacker, defender = SelectHero.heroSelect(hero1,hero2)
      Attack.attack(attacker,defender)
      n+=1
      if attacker.hp <= 0 || defender.hp <= 0
        break
      end
    end

    if (n > 4)
      if(hero1.hp < 0 || hero2.hp > hero1.hp)
        puts "#{hero2.name} has won with #{hero2.hp} hp left"
      elsif (hero2.hp < 0 || hero1.hp > hero2.hp)
        puts "#{hero1.name} has won with #{hero1.hp} hp left"
      end
    end
  end
end