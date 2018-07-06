require "spec_helper"
require "deathMatch"

describe DeathMatch do
  describe ".deathMatch" do
    it "returns a winner" do
      h = Healer.new
      m = Mage.new
      t = DeathMatch.new.mode(h,m)
      
      if h.hp < m.hp
        expect(m.hp).to be > (h.hp)
      else
        expect(h.name).to be > (m.hp)

      end
    end
  end
end
        

    