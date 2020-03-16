require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportTeam < Minitest::Test
  def setup()
@sport_team= SportTeam.new("Milan",["Gigio Donnarumma","Alessio Romagnoli","Davide Calabria"],"Stefano Pioli")
  end

def test_get_team_name()
  assert_equal("Milan", @sport_team.get_team_name)
end

end
