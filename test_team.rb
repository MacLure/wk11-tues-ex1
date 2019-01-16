require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Team A", "beginner", ["Member 1", "Member 2", "Member3"])
  end

  def test_to_hash
    expected = { team_name: "Team A", level: "beginner", points: 0 }
    actual = @team.to_hash

    assert_equal(expected, actual)
  end

end