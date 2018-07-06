class Attack 
  def self.attack(attacker, defender)
    damage = Crit.addDamage(attacker)
	  if (attacker.hp < 0 && defender.hp < 0)
      puts "Game over"
	  elsif defender.armor > damage	
		  puts "#{defender.name} has #{defender.armor = defender.armor - damage} armor left"
    elsif defender.armor < damage
      puts "#{defender.name} has #{defender.hp = (defender.armor + defender.hp) - damage} hp left"
	  end
	end
end