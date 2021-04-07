require 'rspec'
require './lib/player'

describe Player do
  context 'initiatize' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})

    it 'exists' do
      expect(roy).to be_a(Player)
    end

    it 'has readable attributes' do
      expect(roy.name).to eq("Roy Kent")
      expect(roy.position).to eq("Center Midfielder")
      expect(roy.salary).to eq(1000000)
    end
  end
end
