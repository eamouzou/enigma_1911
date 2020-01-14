require './lib/shift_values'

class Cypher < ShiftValues

  def self.values(key, date)
    Cypher.new.values(key, date)
  end

  def self.alphabet
    ("a".."z").to_a << " "
  end

end
