require './test/test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_random_number_method
    assert_equal 5, @enigma.random_num.length
    assert_equal String, @enigma.random_num.class
  end
end
