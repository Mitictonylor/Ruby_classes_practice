require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportTeam < Minitest::Test
  def setup()
@sport_team= SportTeam.new("Milan",["Gigio Donnarumma","Alessio Romagnoli","Davide Calabria"],"Stefano Pioli")
  end

def test_get_team_name()
  assert_equal("Milan", @sport_team.get_team_name())
end

def test_get_team_players()
  assert_equal(["Gigio Donnarumma","Alessio Romagnoli","Davide Calabria"],@sport_team.get_team_players())
end

def test_get_team_coach()
  assert_equal("Stefano Pioli", @sport_team.get_team_coach())
end

def test_set_team_coach()
  @sport_team.set_team_coach("Max Allegri")
  assert_equal("Max Allegri",@sport_team.get_team_coach())
end


end
