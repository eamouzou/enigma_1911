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

  def test_key_values
    assert_equal [12, 23, 34, 45], @shift.key_values("12345")
  end
end
