require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportTeam < Minitest::Test
  def setup()
@sport_team= SportTeam("Milan",["Gigio Donnarumma","Alessio Romagnoli","Davide Calabria","Stefano Pioli"])
  end



end
