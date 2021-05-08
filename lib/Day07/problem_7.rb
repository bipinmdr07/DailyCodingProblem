module Day7
  def decodeString(numericString)
    hash = {}

    return [] if numericString.length.zero?
    if numericString.length == 1
      return "Invalid string" if numericString.match(/^[1-9]\d*$/).nil? if numericString.length == 1
      return [numericString]
    end
    return "Invalid string" if numericString.match(/^[1-2]\d+$/).nil?

    (1..26).each { |num| hash[num.to_s] = (96 + num).chr }
    combos = stringCombos(numericString)
    valid_combos = combos.filter { |combo| validStringCombo?(combo) }
    valid_strings = valid_combos.map do |combo|
      combo.map { |char| hash[char] }.join("")
    end
    valid_strings
  end

  def validStringCombo?(stringArray)
    stringArray.each do |string|
      return false if string.to_i.zero? || string.to_i > 26
    end
    true
  end

  def stringCombos(string)
    queue = [[string]]
    combos = [[string]]

    while !queue.empty?
      i, current = 0, queue.shift
      p_left, p_right = current[0], current[1..-1]

      next if p_left.length == 1
      while i < current[0].length - 1
        left, right = p_left[0..i], p_left[(i + 1)..(-1)]
        array = [left] + [right] + p_right.to_a
        queue.push(array)
        combos.push(array)
        i += 1
      end
    end

    combos
  end
end
