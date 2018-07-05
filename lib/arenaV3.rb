

class Arena  
  
  def self.duel(h1,h2, mode)
    gameMode = mode.new
    puts gameMode
    gameMode.mode(h1,h2)
  end

end

class Crit
  def self.addDamage(attacker)
    critdamge = attacker.critd.sample
    damage = attacker.dmg + critdamge
  end
end

class SelectHero
  def self.heroSelect(hero1, hero2)
    defender = [hero1, hero2].sample
      if defender === hero1
        attacker = hero2
      elsif defender === hero2
        attacker = hero1
      end
  end
end

class TurnBased
  def mode (hero1, hero2)
    SelectHero.heroSelect(hero1, hero2)
    n = 0
    while n < 5 do
      puts hero1.name
      puts hero2.name
      if(hero1.hp != 0 || hero2.hp != 0)
        n+=1
        attack(hero1,hero2)
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

class DeathMatch
  def mode (hero1,hero2)
    while (hero1.hp > 0 && hero2.hp >  0) do
      defend = [hero1, hero2].sample
      if defend === hero1
        attack(hero2, hero1)
      elsif defend === hero2
        attack(hero1, hero2)
      end
      if(hero1.hp < 0 || hero2.hp < 0)
        puts "Game over"
        if (hero1.hp > hero2.hp)
          puts  "#{hero1.name} has won with #{hero1.hp} hp left"
        else 
          puts "#{hero2.name} has won with #{hero2.hp} hp left"
        end
      end
    end
  end   
end



class Mode 
  def self.attack(attacker, defender)
    damage = Crit.addDamage(attacker)
	  if defender.hp < 0
		  puts "#{defender.name} is already dead"
	  elsif defender.armor > damage	
		  puts "#{defender.name} has #{defender.armor = defender.armor - damage} armor left"
    elsif defender.armor < damage
      if defender.hp < 0
        puts "#{defender.name} has 0 hp left"
      elsif defender.hp > 0
        puts "#{defender.name} has #{defender.hp = (defender.armor + defender.hp) - damage} hp left"
      end
	  end
	end
end

class Hero
  attr_accessor :hp, :armor
  attr_reader :critd, :name, :dmg
	
  def initialize
    @hp = hp
    @armor = armor
    @dmg = dmg
    @name = name
    @critd = critd
  end
 end


class Warrior < Hero
  def initialize
    @hp = 100
    @armor = 25
    @dmg = 25
    @name = 'Reaper'
    @critd = [125, 0, 0, 0]
  end	
end

class Healer < Hero
  def initialize
    @hp = 60
    @armor = 0
    @dmg = 5
    @name = 'Mercy'
    @critd = [20, 0, 0, 0]
  end
end

class Mage < Hero
  def initialize
    @hp = 40
    @armor = 0
    @dmg = 100
    @name = 'Moira'
    @critd = [100, 0]
 end
end

class Tank < Hero
  def initialize
    @hp = 100
    @armor = 100
    @dmg = 0.5
    @name = 'Rein'
    @critd = [50, 0]
 end
end

