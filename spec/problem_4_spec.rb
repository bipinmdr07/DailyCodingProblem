require "Day4/problem_4"

describe Day4 do
  let (:dummy_class) { Class.new { extend Day4 } }

  describe '.find_missing_positive_integers' do
    context 'provided array is empty' do
      it 'should return 1' do
        expect(dummy_class.find_missing_positive_integer([])).to eq(1)
      end
    end

    context 'provided array contains only negative numbers' do
      let (:array) { [-1, -2, -5, -3] }

      it 'should requrn 1' do
        expect(dummy_class.find_missing_positive_integer(array)).to eq(1)
      end
    end

    context 'provided array contains negative numbers and zeros' do
      let (:array) { [-1, -1, -2, 0, 0, 0] }

      it 'should return 1' do
        expect(dummy_class.find_missing_positive_integer(array)).to eq(1)
      end
    end

    context 'provided array contains the intermediate number missing' do
      let (:array) { [ -1, 2, 1, 4, 7, 0, 9 ] }

      it ('should return missing positive number') do
        expect(dummy_class.find_missing_positive_integer(array)).to eq(3)
      end
    end

    context 'provided array contains positive but non missing number' do
      let (:array) { [-1, 0, 7, 6, 5, 4, 3, 2, 1, 1] }

      it 'should return next number to greatest number in array' do
        expect(dummy_class.find_missing_positive_integer(array)).to eq(8)
      end
    end
  end
end
