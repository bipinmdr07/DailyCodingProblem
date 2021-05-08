require "Day08/problem_8"

describe Day8 do
  let(:dummy_class) { Class.new { extend Day8 } }
  subject(:node) {
    Day8::Node.new(0,
                   Day8::Node.new(1),
                   Day8::Node.new(0,
                                  Day8::Node.new(1,
                                                 Day8::Node.new(1),
                                                 Day8::Node.new(1)),
                                  Day8::Node.new(0)))
  }

  describe Day8::Node do
    it { should respond_to(:value) }
    it { should respond_to(:left) }
    it { should respond_to(:right) }
    it { should respond_to(:unival?) }
  end

  describe ".univalCount" do
    it "should give the number of unival subtree present in the tree" do
      expect(dummy_class.univalCount(node)).to eq(5)
    end
  end
end
