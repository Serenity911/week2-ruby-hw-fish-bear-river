require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')

class TestBear < Minitest::Test

  def setup
    @bear = Bear.new("Bob", "Grizzly")
  end

  def test_bear_has_name
    assert_equal("Bob", @bear.name)
  end

  def test_bear_has_a_type
    assert_equal("Grizzly", @bear.type)

  end

end
