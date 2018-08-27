require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
  end


  def test_initialize_with_defaults_sets_random_name
    expected = String
    actual = @rocket.name.class
    assert_equal(expected, actual)
  end

  def test_initialize_with_defaults_sets_random_colour
    expected = String
    actual = @rocket.colour.class

    assert_equal(expected, actual)
  end

  def test_initialize_with_defaults_returns_flying_false

    expected = false
    actual = @rocket.flying?
    assert_equal(expected, actual)
  end

  def test_name_returns_name
    expected = Rocket.new(name: "Little Rocket")
    actual = @rocket.name
  end


end
