class League
  attr_reader :name,
                   :teams

  def initialize(name)
    @name = name
    @teams = []
  end

  def add_team(team)
    @teams << team
  end

  def captains
    cap_name = []
    teams.each do |team|
      team.players.each do |player|
        if player.name == team.captain
          cap_name << player
        end
      end
    end
    cap_name
  end

  def players_by_team
    player_names = Hash.new{ |hash, key| hash[key] = [] }
    @teams.each do |team|
      player_names[team] << teams[0].players[0].name
    end
    player_names
  end
end
