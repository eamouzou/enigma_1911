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

  def test_offset_values
    assert_equal [4, 4, 0, 0], @shift.offset_values("120120")
  end

  def test_values
    assert_equal [16, 27, 34, 45], @shift.values("12345", "120120")
  end
end
