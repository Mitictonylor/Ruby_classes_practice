class SportTeam

attr_accessor :name,:player,:coach

  def initialize(name,players,coach)
    @name = name
    @player = players
    @coach = coach
  end

# def name()
#   return @name
# end
#
# def get_team_players()
#   return @player
# end
#
# def get_team_coach()
#   return @coach
# end
#
# def set_team_coach(name)
#   @coach = name
# end
 def add_player(name)
   @player.push(name)
 end

end
