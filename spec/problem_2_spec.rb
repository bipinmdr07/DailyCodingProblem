require "Day2/problem_2"

describe Day2 do
  let (:dummy_class) { Class.new { extend Day2 } }

  describe ".multiplied_array_with_division" do
    context 'array contains one zero' do
      let(:array) { [1, 2, 3, 0, 4] }
      it "should return '12'" do
        expect { dummyclass.multiplied_array_with_division(array).to eq(12) }
      end
    end

    context 'array contains two zeros' do
      let(:array) { [0, 2, 3, 0, 4, 0]}
      it "should return '0'" do
        expect { dummyclass.multiplied_array_with_division(array).to eq(0) }
      end
    end

    context 'array does not contains zero' do
      let(:array) { [1, 2, 3, 4, 5] }
      let(:result) { [120, 60, 40, 30, 24] }
      it "should return '[120, 60, 40, 30, 24]'" do
        expect { dummyclass.multiplied_array_with_division(array).to eq(result)}
      end
    end
  end

  describe ".multiplied_array_without_division" do
    context 'array contains one zero' do
      let(:array) { [1, 2, 3, 0, 4] }
      it "should return '12'" do
        expect { dummyclass.multiplied_array_without_division(array).to eq(12) }
      end

    end

    context 'array contains two zeros' do
      let(:array) { [0, 2, 3, 0, 4, 0]}
      it "should return '0'" do
        expect { dummyclass.multiplied_array_without_division(array).to eq(0) }
      end

    end

    context 'array does not contains zero' do
      let(:array) { [1, 2, 3, 4, 5] }
      let(:result) { [120, 60, 40, 30, 24] }
      it "should return '[120, 60, 40, 30, 24]'" do
        expect { dummyclass.multiplied_array_without_division(array).to eq(result)}
      end

    end
  end

end
