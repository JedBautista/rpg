class Healer < Hero
  def initialize
    @hp = 60
    @armor = 0
    @dmg = 5
    @name = 'Mercy'
    @critd = [20, 0, 0, 0]
  end
end