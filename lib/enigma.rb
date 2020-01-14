require './lib/cypher'
require 'date'

class Enigma < Cypher
  def current_date
    Time.now.strftime("%d%m%y")
  end

  def random_num
    rand(10**5).to_s.rjust(5, '0')
  end

  def encrypt(input, key = random_num, date = current_date)
    Cypher.encode(input, key, date)
  end
end
