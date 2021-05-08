require "Day07/problem_7"

describe Day7 do
  let(:dummy_class) { Class.new { extend Day7 } }

  describe ".decodeString" do
    context "empty string" do
      let (:test_string) { "" }
      it "should return empty array" do
        expect(dummy_class.decodeString(test_string)).to eq([])
      end
    end

    context "invalid string" do
      describe "non numeric characters" do
        let(:test_string) { "abcd" }
        it "should return Invalid string" do
          expect(dummy_class.decodeString(test_string)).to eq("Invalid string")
        end
      end

      describe "numeric characters" do
        let(:test_string) { "01234" }
        it "should return Invalid string for string starting with 0" do
          expect(dummy_class.decodeString(test_string)).to eq("Invalid string")
        end

        let(:test_string) { "35689" }
        it "should return Invalid string for string with length greater than 1 and starting with 3 or more" do
          expect(dummy_class.decodeString(test_string)).to eq("Invalid string")
        end
      end
    end

    context "valid string" do
      describe "with single valid string" do
        let(:test_string) { "1" }

        it "should return the string in array" do
          expect(dummy_class.decodeString(test_string)).to eq(["1"])
        end
      end

      describe "valid more than one chars" do
        let(:test_string) { "11" }
        it "should return valid decodes in array" do
          expect(dummy_class.decodeString(test_string)).to eq(["k", "aa"])
        end

        let(:test_string2) { "111" }
        it "should return valid decodes in array" do
          expect(dummy_class.decodeString(test_string2)).to eq(["ak", "ka", "aaa"])
        end
      end
    end
  end

  describe ".validStringCombo?" do
    context "invalid combo" do
      let (:combo) { ["1", "2", "46"] }
      it "should return false" do
        expect(dummy_class.validStringCombo?(combo)).to eq(false)
      end
    end

    context "valid combo" do
      let(:combo) { ["1", "1", "26"] }
      it "should return true" do
        expect(dummy_class.validStringCombo?(combo)).to eq(true)
      end
    end
  end

  describe ".stringCombos" do
    let(:string) { "111" }
    it "should return all combos" do
      expect(dummy_class.stringCombos(string)).to eq([["111"], ["1", "11"], ["11", "1"], ["1", "1", "1"]])
    end
  end
end
