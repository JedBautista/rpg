require_relative 'hero'

class Warrior < Hero
  def initialize
    @hp = 100
    @armor = 25
    @dmg = 25
    @name = 'Reaper'
    @critd = [125, 0, 0, 0]
  end	
end