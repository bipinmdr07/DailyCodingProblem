module Day3
  class Node
    attr_accessor :left, :right, :name, :visited

    def initialize(name, left=nil, right=nil)
      @name = name
      @left = left
      @right = right
    end
  end

  def serialize(node)
    pre_order_serializer(node, [])
  end

  def deserialize(string)
    string_sequence = string.split(' ')
    pre_order_deserializer(string_sequence)
  end

  def pre_order_serializer(root, string_sequence = [])
    if root.nil?
      string_sequence.push('#')
      return
    end

    string_sequence.push(root.name)
    pre_order_serializer(root.left, string_sequence)
    pre_order_serializer(root.right, string_sequence)
    string_sequence.join(' ')
  end

  def pre_order_deserializer(string_sequence)
    return nil if string_sequence.empty?
    data = string_sequence.shift
    return nil if data == '#'

    root = Node.new(data)
    root.left = pre_order_deserializer(string_sequence)
    root.right = pre_order_deserializer(string_sequence)
    root
  end

  def post_order_serializer(root, string_sequence)
    if root.nil?
      string_sequence.push('#')
      return
    end

    post_order_serializer(root.left, string_sequence)
    post_order_serializer(root.right, string_sequence)
    string_sequence.push(root.name)
    string_sequence.join(' ')
  end

  def post_order_deserializer(string_sequence)
    return nil if string_sequence.empty?
    data = string_sequence.shift
    return nil if data.equal?('#')

    root = Node.new(data)
    root.right = post_order_deserializer(string_sequence)
    root.left = post_order_deserializer(string_sequence)
    root
  end
end
