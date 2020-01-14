require './test/test_helper'
require './lib/cypher'

class CypherTest < Minitest::Test
  def test_inherits_values
    assert_equal [3, 27, 73, 20], Cypher.values("02715", "040895")
  end

  def test_creates_alphabet
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, Cypher.alphabet
  end

  def test_encode_matched_alphabet
    expected = {"a"=>"e",
      "b"=>"f",
      "c"=>"g",
      "d"=>"h",
      "e"=>"i",
      "f"=>"j",
      "g"=>"k",
      "h"=>"l",
      "i"=>"m",
      "j"=>"n",
      "k"=>"o",
      "l"=>"p",
      "m"=>"q",
      "n"=>"r",
      "o"=>"s",
      "p"=>"t",
      "q"=>"u",
      "r"=>"v",
      "s"=>"w",
      "t"=>"x",
      "u"=>"y",
      "v"=>"z",
      "w"=>" ",
      "x"=>"a",
      "y"=>"b",
      "z"=>"c",
      " "=>"d"}
      
      assert_equal expected, Cypher.encode_matched_alphabet([3, 27, 73, 20])
  end

end
