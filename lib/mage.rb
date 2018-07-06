require_relative 'hero'

class Mage < Hero
  def initialize
    @hp = 40
    @armor = 0
    @dmg = 100
    @name = 'Moira'
    @critd = [100, 0]
 end
end