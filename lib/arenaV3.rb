require_relative 'deathMatch'
require_relative 'turnBased'

class Arena  
  def self.duel(h1,h2, mode)
    gameMode = mode.new
    gameMode.mode(h1,h2)
  end
end






















