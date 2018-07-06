class SelectHero
  def self.heroSelect(attacker, defender)
    attacker, defender = [attacker, defender].shuffle
  end
end