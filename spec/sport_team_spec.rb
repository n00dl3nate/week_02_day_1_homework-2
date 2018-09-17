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

  def test_change_coach_name
    @sport_team.coach = "Daniel"
    result = @sport_team.get_coach
    assert_equal("Daniel",result)
  end

  def test_add_players
    @sport_team.add_players(["Craig","Adam"])
    result = @sport_team.players.length
    assert_equal(7,result)
  end 




end
