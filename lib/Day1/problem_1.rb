module Day1
  def dummy_function(array, target_number)
    return false if array.size <= 1

    (0...(array.length - 1)).each do |i|
      (i...(array.length)).each do |j|
        if array[i] + array[j] == target_number
          return true
        end
      end
    end

    false
  end
end
