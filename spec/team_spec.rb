require 'rspec'
require './lib/player'
require './lib/team'

describe Team do
  context 'initialize' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

    it 'exists' do
      expect(richmond).to be_a(Team)
    end

    it 'has readable attributes' do
      expect(richmond.name).to eq("AFC Richmond")
      expect(richmond.coach).to eq("Ted Lasso")
      expect(richmond.players).to eq([roy, sam])
    end
  end

  context 'team details' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

    it 'has a total salary' do
      expect(richmond.total_salary).to eq(1600000)
    end

    it 'has a team captain' do
      expect(richmond.captain).to eq("Roy Kent")
    end

    it 'can list positions filled' do
      expect(richmond.positions_filled).to eq(["Center Midfielder", "Right-back Defender"])
    end
  end
end
