require "spec_helper"
require "arenaV3"
 
describe Hero do
  describe "#initialize" do
    it "returns a warrior" do 
      w = Warrior.new
      expect(w.hp).to eq 100
      expect(w.armor).to eq 25
      expect(w.dmg).to eq 25
      expect(w.name).to eq "Reaper"
      expect(w.critd).to eq [125, 0, 0, 0]
    end
    it "returns a tank" do 
      t = Tank.new
      expect(t.hp).to eq 100
      expect(t.armor).to eq 100
      expect(t.dmg).to eq 0.5
      expect(t.name).to eq "Rein"
      expect(t.critd).to eq [50, 0]
    end
    it "returns a mage" do 
      m = Mage.new
      expect(m.hp).to eq 40
      expect(m.armor).to eq 0
      expect(m.dmg).to eq 100
      expect(m.name).to eq "Moira"
      expect(m.critd).to eq [100,0]
    end
    it "returns a healer" do 
      h = Healer.new
      expect(h.hp).to eq 60
      expect(h.armor).to eq 0
      expect(h.dmg).to eq 5
      expect(h.name).to eq "Mercy"
      expect(h.critd).to eq [20, 0, 0, 0]
    end
  end
end


