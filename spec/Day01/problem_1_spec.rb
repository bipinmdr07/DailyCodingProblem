require "Day01/problem_1"

describe Day1 do
  let (:dummy_class) { Class.new { extend Day1 } }

  context "empty array" do
    subject(:array) { dummy_class.two_numbers_sums_to_target?([], 1) }
    it { is_expected.not_to be_truthy }
  end

  context "one element in array" do
    subject(:array) { dummy_class.two_numbers_sums_to_target?([1], 1) }
    it { is_expected.not_to be_truthy }
  end

  context "array length greater than 1" do
    describe "array contains the numbers which adds up to target value" do
      subject(:array) { dummy_class.two_numbers_sums_to_target?([10, 15, 3, 7], 17) }
      it { is_expected.to be_truthy }
    end

    describe "array don't contains the number which adds up to target value" do
      subject(:array) { dummy_class.two_numbers_sums_to_target?([10, 15, 3, 7], 11) }
      it { is_expected.not_to be_truthy }
    end
  end
end
