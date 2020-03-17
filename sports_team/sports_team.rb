class SportTeam

attr_accessor :name,:players,:coach

  def initialize(name,players,coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
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
   @players.push(name)
 end

 def find_team_player(name)
   #return @players.include?(name)
   for player in @players
     return true if player == name
     # if player == name
     #   return true
     # else
     #   return false
     # end
   end

   return false

 end

def update_points(win_or_lost)
@points += 3 if win_or_lost.downcase == "win"
end


end
