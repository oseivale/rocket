require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
    @val = Rocket.new(name: "Val", colour: "brown", flying: false )
    @bob = Rocket.new(name: "Bob", colour: "blue", flying: true )
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

  def test_colour_with_given_colour
    @rocket = Rocket.new(colour: "red")
    expected = "red"
    actual = @rocket.colour
    assert_equal(expected, actual)
  end

  def test_flying_returns_flying
    @rocket = Rocket.new(flying: true)
    expected = true
    actual = @rocket.flying?
    assert_equal(expected, actual)
  end

  def test_lift_off_flying_returns_false_if_flying_is_true
    @rocket = Rocket.new(flying: true)
    expected = false
    actual = @rocket.lift_off
    assert_equal(expected, actual)
  end

  def test_flying_is_false_after_rocket_lands
    @rocket = Rocket.new(flying: true)
    expected = false
    @rocket.land
    actual = @rocket.flying?
    assert_equal(expected, actual)
  end

  def test_lift_off_flying_returns_true_if_flying_is_false
    @rocket = Rocket.new(flying: false)
    expected = true
    actual = @rocket.lift_off
    assert_equal(expected, actual)
  end

  def test_land_if_flying_return_true
    @rocket = Rocket.new(flying: true)
    expected = true
    actual = @rocket.land
    assert_equal(expected, actual)
  end

  def test_land_if_flying_return_false
    @rocket = Rocket.new(flying: false)
    expected = false
    actual = @rocket.land
    assert_equal(expected, actual)
  end

  def test_status_if_flying_return_sentence_flying_through_sky

    expected = "Rocket Bob is flying through the sky!"
    actual = @bob.status
    assert_equal(expected, actual)
  end

  def test_status_if_flying_return_sentence_ready_lift_off

    expected = "Rocket Val is ready for lift off!"
    actual = @val.status
    assert_equal(expected, actual)
  end
end
