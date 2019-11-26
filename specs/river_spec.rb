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
    # @fish1 = Fish.new("Marley")
    # @fish2 = Fish.new("Merlin")
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)

  end

  def test_river_has_hundred_fishes
    assert_equal(100, @river.fish.length)
  end

  def test_river_lose_a_fish
    # @river.fish << @fish1
    @river.lose_a_fish()
    assert_equal(99, @river.fish.length)
  end

  def test_bear_can_get_a_fish
    @bear.catch_a_fish_from_river(@river)
    assert_equal(99, @river.fish.length)
    assert_equal(1, @bear.stomach.length)
  end

  def test_river_has_a_fish_counter
    assert_equal(100, @river.fish_counter)
  end

end
