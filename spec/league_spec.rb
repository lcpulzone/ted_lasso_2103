require 'rspec'
require './lib/player'
require './lib/team'
require './lib/league'

describe League do
  context 'initialize' do
    premier = League.new("Premier League")

    it 'exists' do
      expect(premier).to be_a(League)
    end

    it 'has a name' do
      expect(premier.name).to eq("Premier League")
    end
  end

  context 'teams' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
    fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
    manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
    premier = League.new("Premier League")

    it 'starts with no teams' do
      expect(premier.teams).to eq([])
    end

    it 'can add teams' do
      premier.add_team(richmond)
      premier.add_team(manchester)

      expect(premier.teams).to eq([richmond, manchester])
    end
  end

  context 'team details' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
    fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
    manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
    premier = League.new("Premier League")

    premier.add_team(richmond)
    premier.add_team(manchester)

    it 'can list team captains' do
      expect(premier.captains).to eq([roy, fernandinho])
    end

    it 'can list players by team' do
      expected = {
        richmond => ["Roy Kent", "Sam Obisanya"],
        manchester => ["Jamie Tartt", "Fernandinho"]
      }
      expect(premier.players_by_team).to eq(expected)
    end
  end
end
