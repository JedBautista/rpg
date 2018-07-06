class Crit
  def self.addDamage(attacker)
    critdamge = attacker.critd.sample
    damage = attacker.dmg + critdamge
  end
end