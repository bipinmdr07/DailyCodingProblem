module Day11
  def autocomplete(string_sets = [], query = '')
    return [] if query.empty?

    matched = []

    string_sets.each do |string|
      matched.push(string) if string.match(/^#{query}/)
    end

    matched
  end
end
