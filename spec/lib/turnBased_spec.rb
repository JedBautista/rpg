require "spec_helper"
require "turnBased"

describe TurnBased do
  describe ".turnBased" do
    it "returns a winner within 5 turns" do
      h = Healer.new
      m = Mage.new
      t = TurnBased.new.mode(h,m)
      
      if h.hp < m.hp
        expect(m.hp).to be > (h.hp)
      else
        expect(h.name).to be > (m.hp)

      end
    end
  end
end
        

    