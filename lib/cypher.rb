require './lib/shift_values'

class Cypher < ShiftValues

  def self.values(key, date)
    Cypher.new.values(key, date)
  end

  def self.alphabet
    ("a".."z").to_a << " "
  end

  def self.encode_matched_alphabet(values)
    Hash[alphabet.zip(alphabet.rotate(values[0]))]
  end

  def self.encode_transform(input, values)
    changed_input = ""
    input.chars.each do |letter|
      if alphabet.include?(letter) == false
        changed_input = changed_input + letter
        next
      end
      values = values.rotate unless changed_input.empty? == true
      changed_input << encode_matched_alphabet(values)[letter]
    end
    changed_input
  end

  def self.encode(input, key, date)
    values = values(key, date)
    transformed = encode_transform(input, values)
    {encryption: transformed, key: key, date: date}
  end

  def self.decode_matched_alphabet(values)
    Hash[alphabet.zip(alphabet.rotate(- values[0]))]
  end

end
