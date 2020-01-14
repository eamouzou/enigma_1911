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
    expected = {"a"=>"d", "b"=>"e", "c"=>"f", "d"=>"g", "e"=>"h", "f"=>"i",
      "g"=>"j", "h"=>"k", "i"=>"l", "j"=>"m", "k"=>"n", "l"=>"o", "m"=>"p",
      "n"=>"q", "o"=>"r", "p"=>"s", "q"=>"t", "r"=>"u", "s"=>"v", "t"=>"w",
      "u"=>"x", "v"=>"y", "w"=>"z", "x"=>" ", "y"=>"a", "z"=>"b", " "=>"c"}

      assert_equal expected, Cypher.encode_matched_alphabet([3, 27, 73, 20])
  end

  

end
