require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team')

class TestSportTeam < MiniTest::Test

  def setup
    @sport_team = SportTeam.new("Liverpool",
   ["Jack","Tom","Billy","Sam","Nate"], "Bill")
  end

  def test_get_team_name
    result = @sport_team.get_team_name
    assert_equal("Liverpool",result)
  end

  def test_get_team_players
    result = @sport_team.get_players
    assert_equal(["Jack","Tom","Billy","Sam","Nate"],result)
  end

  def test_get_team_coach
    result = @sport_team.get_coach
    assert_equal("Bill",result)
  end

end
