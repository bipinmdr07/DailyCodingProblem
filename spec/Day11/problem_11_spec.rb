require "Day11/problem_11"

describe Day11 do
  let(:dummy_class) { Class.new { extend Day11 } }
  let(:string_sets) { %w{admin administrator headquarter school office} }

  describe ".autocomplete" do
    context 'empty string' do
      let(:test_string) { '' }

      it "should return empty array" do
        expect(dummy_class.autocomplete(string_sets, test_string)).to eq([])
      end
    end

    context 'matching substring' do
      let(:test_string) { 'ad' }

      it "should return the lists of substring matching words" do
        expect(dummy_class.autocomplete(string_sets, test_string)).to eq(%w{admin administrator})
      end
    end

    context 'word not included in string sets' do
      let(:test_string) { 'dummy' }

      it "should return empty array" do
        expect(dummy_class.autocomplete(string_sets, test_string)).to eq([])
      end
    end
  end

end
