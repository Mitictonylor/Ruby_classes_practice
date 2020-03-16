require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportTeam < Minitest::Test
  def setup()
@sport_team= SportTeam.new("Milan",["Gigio Donnarumma","Alessio Romagnoli","Davide Calabria"],"Stefano Pioli")
  end

def test_get_team_name()
  assert_equal("Milan", @sport_team.name())
end

def test_get_team_players()
  assert_equal(["Gigio Donnarumma","Alessio Romagnoli","Davide Calabria"],@sport_team.player())
end

def test_get_team_coach()
  assert_equal("Stefano Pioli", @sport_team.coach())
end

def test_set_team_coach()
  @sport_team.coach ="Max Allegri"
  assert_equal("Max Allegri",@sport_team.coach())
end

def test_add_player()
  @sport_team.player.push("Theo Hernandez")
  assert_equal(["Gigio Donnarumma","Alessio Romagnoli","Davide Calabria", "Theo Hernandez"], @sport_team.player)
end
end
