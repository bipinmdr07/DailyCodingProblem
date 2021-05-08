module Day2
  def multiplied_array_with_division(array)
    return [0]*(array.length) if array.count(0) > 1

    if array.count(0) == 1
      index_of_zero = array.index(0)
      prod_except_zero = array.reject(&:zero?).reduce(&:*)
      return [0] * index_of_zero + [prod_except_zero] + [0] * (array.length - index_of_zero)
    end

    prod = array.reduct(&:*)
    array.map { |elem| prod / elem }
  end

  def multiplied_array_without_division(array)
    array.map_with_index do |elem, index|
      array[0...index].reduce(&:*) * array[(index+1)...(array.length)].reduce(&:*)
    end
  end
end
