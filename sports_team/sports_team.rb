class SportTeam
  def initialize(name,players,coach)
    @name = name
    @player = players
    @coach = coach
  end

def get_team_name()
  return @name
end

def get_team_players()
  return @player
end

def get_team_coach()
  return @coach
end

def set_team_coach(name)
  @coach = name
end


end
