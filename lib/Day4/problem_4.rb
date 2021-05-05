module Day4
  def find_missing_positive_integer(array)
    expected_value = 1
    set = Set.new(array.sort.reject { |v| v <= 0 })

    set.each do |val|
      break if val != expected_value
      expected_value += 1
    end

    expected_value
  end
end
