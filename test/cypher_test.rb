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

  def test_encode_transform
    values = [3, 27, 73, 20]

    assert_equal "keder ohulw", Cypher.encode_transform("hello world", values)
  end

  def test_it_encodes
    expected = {encryption: "keder ohulw", key: "02715", date: "040895"}

    assert_equal expected, Cypher.encode("hello world", "02715", "040895")
  end

  def test_decode_matched_alphabet
    expected = {"a"=>"y", "b"=>"z", "c"=>" ", "d"=>"a", "e"=>"b", "f"=>"c",
      "g"=>"d", "h"=>"e", "i"=>"f", "j"=>"g", "k"=>"h", "l"=>"i", "m"=>"j",
      "n"=>"k", "o"=>"l", "p"=>"m", "q"=>"n", "r"=>"o", "s"=>"p", "t"=>"q",
      "u"=>"r", "v"=>"s", "w"=>"t", "x"=>"u", "y"=>"v", "z"=>"w", " "=>"x"}

    assert_equal expected, Cypher.decode_matched_alphabet([3, 27, 73, 20])
  end

  def test_decode_transform
    values = [3, 27, 73, 20]

    assert_equal "hello world", Cypher.decode_transform("keder ohulw", values)
  end

  def test_it_decodes
    expected = {decryption: "hello world", key: "02715", date: "040895"}

    assert_equal expected, Cypher.decode("keder ohulw", "02715", "040895")
  end

  def test_it_encodes_and_decodes_special_characters
    message = "The moment has come for the love revolution!!!
    Where?"
    message1 = "Tlvosscttxqwgwqruqvolshozlvorsltfvvjupkhosd!!!\nofdqWwkvv?"
    expected = {encryption: message1, key: "02715", date: "130120"}
    expected1 = {decryption: message, key: "02715", date: "130120"}

    assert_equal expected, Cypher.encode(message, "02715", "130120")
    assert_equal expected1, Cypher.decode(message1, "02715", "130120")
  end




end
