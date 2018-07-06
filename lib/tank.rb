require_relative 'hero'

class Tank < Hero
  def initialize
    @hp = 100
    @armor = 100
    @dmg = 0.5
    @name = 'Rein'
    @critd = [50, 0]
 end
end