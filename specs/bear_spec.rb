require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')

class TestBear < Minitest::Test

  def setup
    @bear = Bear.new("Bob", "Grizzly")
    # @river = River.new("Amazon")
    # @fish1 = Fish.new("Marley")
    # @fish2 = Fish.new("Merlin")
  end

  def test_bear_has_name
    assert_equal("Bob", @bear.name)
  end

  def test_bear_has_a_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_has_a_food_counter
    assert_equal(0, @bear.food_counter)
  end

  def test_bear_has_empty_stomach
    assert_equal(0, @bear.food_counter)
  end


  def test_bear_can_roar
    assert_equal("Roar Roar", @bear.can_roar)
  end



end
