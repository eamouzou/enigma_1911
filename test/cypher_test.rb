require './test/test_helper'
require './lib/cypher'

class CypherTest < Minitest::Test
  def test_inherits_values
    assert_equal [3, 27, 73, 20], Cypher.values("02715", "040895")
  end
end
