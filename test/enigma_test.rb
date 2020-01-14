require './test/test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_current_date
    assert_equal String, @enigma.current_date.class
    assert_equal 6, @enigma.current_date.length
  end

  def test_random_number_method
    assert_equal 5, @enigma.random_num.length
    assert_equal String, @enigma.random_num.class
  end

  def test_it_can_encrypt_through_inheritance
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_can_decrypt_through_inheritance
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_it_can_encrypt_without_a_date
    @enigma.stubs(:current_date).returns("040895")
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end

  def test_it_can_decrypt_without_a_date
    @enigma.stubs(:current_date).returns("040895")
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715")
  end

  def test_it_can_encrypt_without_a_date_and_key
    @enigma.stubs(:current_date).returns("040895")
    @enigma.stubs(:random_num).returns("02715")
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world")
  end
end
