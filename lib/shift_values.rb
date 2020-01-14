class ShiftValues

  def squared(date)
    (date.to_i)**2
  end

  def key_values(num)
    num.chars.each_cons(2).map {|numbers| numbers.join.to_i}
  end

  def offset_values(date)
    squared(date).to_s.chars.last(4).map {|number| number.to_i}
  end

  def values(num, date)
    key = key_values(num)
    offset = offset_values(date)
    key.zip(offset).map {|values| values.sum}
   end
end
