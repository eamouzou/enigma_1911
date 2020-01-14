require './test/test_helper'
require './lib/shift_values'

class ShiftValuesTest < Minitest::Test
  def setup
    @shift = ShiftValues.new
  end

  def test_it_exists
    assert_instance_of ShiftValues, @shift
  end

  def test_squared
    assert_equal 14428814400, @shift.squared("120120")
  end
end
