module Day8
  class Node
    attr_reader :value
    attr_accessor :left, :right

    def initialize(value, left = nil, right = nil)
      @value = value
      @left = left
      @right = right
    end

    def unival?
      (self.left.nil? || self.left.value == self.value) && (self.right.nil? || self.right.value == self.value)
    end
  end

  def univalCount(node)
    queue = []
    unival_array = []
    queue.push(node)

    while (!queue.empty?)
      current = queue.shift
      unival_array.push(current.unival?)

      queue.push(current.left) if current.left
      queue.push(current.right) if current.right
    end

    unival_array.count(true)
  end
end
