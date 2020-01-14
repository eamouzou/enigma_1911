require './lib/cypher'
require 'date'

class Enigma
  def random_num
    rand(10**5).to_s.rjust(5, '0')
  end
end
