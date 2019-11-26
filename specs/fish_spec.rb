require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')


class TestFish < Minitest::Test
  def setup
    @fish = Fish.new("Merlin")
  end

  def test_fish_has_name
    assert_equal("Merlin", @fish.name)
  end



end
