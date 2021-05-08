module Day1
  def two_numbers_sums_to_target?(array, target_number)
    return false if array.size <= 1

    (0...(array.length - 1)).each do |i|
      ((i + 1)...(array.length)).each do |j|
        if array[i] + array[j] == target_number
          return true
        end
      end
    end

    false
  end
end
