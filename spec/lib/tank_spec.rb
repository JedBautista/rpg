require "spec_helper"
require "tank"

describe Hero do
  describe "#initialize" do
    it "returns a tank" do 
      t = Tank.new
      expect(t.hp).to eq 100
      expect(t.armor).to eq 100
      expect(t.dmg).to eq 0.5
      expect(t.name).to eq "Rein"
      expect(t.critd).to eq [50, 0]
    end
  end
end