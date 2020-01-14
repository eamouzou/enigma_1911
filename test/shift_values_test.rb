require './test/test_helper'
require './lib/shift_values'

class ShiftValuesTest < Minitest::Test
  def setup
    @shift = ShiftValues.new
  end

  def test_it_exists
    assert_instance_of ShiftValues, @shift
  end
end
