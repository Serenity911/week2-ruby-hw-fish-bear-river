require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bear')


class TestRiver < Minitest::Test

  def setup
    @river = River.new("Amazon")
    @bear = Bear.new("Bob", "Grizzly")
    @fish_names = ["Marley", "Merlin"]
    @river.populate_with_fish(@fish_names)

  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_populate_with_fish
    assert_equal(2, @river.fish_counter)
  end

  def test_river_lose_a_fish
    @river.lose_a_fish()
    assert_equal(1, @river.fish_counter)
  end

  def test_bear_can_get_a_fish
    @bear.catch_a_fish_from_river(@river)
    assert_equal(1, @river.fish_counter)
    assert_equal(1, @bear.stomach.length)
  end

  def test_river_has_a_fish_counter
    assert_equal(2, @river.fish_counter)
  end

end
