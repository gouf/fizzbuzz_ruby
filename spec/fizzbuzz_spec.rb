require 'fizzbuzz'

FizzBuzzAnswer = [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz', 16, 17, 'Fizz', 19, 'Buzz', 'Fizz', 22, 23, 'Fizz', 'Buzz', 26, 'Fizz', 28, 29, 'FizzBuzz', 31, 32, 'Fizz', 34, 'Buzz', 'Fizz', 37, 38, 'Fizz', 'Buzz', 41, 'Fizz', 43, 44, 'FizzBuzz', 46, 47, 'Fizz', 49, 'Buzz', 'Fizz', 52, 53, 'Fizz', 'Buzz', 56, 'Fizz', 58, 59, 'FizzBuzz', 61, 62, 'Fizz', 64, 'Buzz', 'Fizz', 67, 68, 'Fizz', 'Buzz', 71, 'Fizz', 73, 74, 'FizzBuzz', 76, 77, 'Fizz', 79, 'Buzz', 'Fizz', 82, 83, 'Fizz', 'Buzz', 86, 'Fizz', 88, 89, 'FizzBuzz', 91, 92, 'Fizz', 94, 'Buzz', 'Fizz', 97, 98, 'Fizz', 'Buzz'].freeze

describe FizzBuzz do
  subject { @fizz_buzz = FizzBuzz.new }

  context 'メソッド定義(存在)のチェック' do
    it { is_expected.to respond_to(:fizz?) }
    it { is_expected.to respond_to(:buzz?) }
    it { is_expected.to respond_to(:fizz_buzz?) }
    it { is_expected.to respond_to(:solve) }
  end

  context 'メソッド動作のチェック' do
    context '#fizz? は' do
      it '3を渡されたとき true を返す' do
        expect(subject.fizz?(3)).to be_truthy
      end

      it '5を渡されたとき false を返す' do
        expect(subject.fizz?(5)).to be_falsey
      end
    end

    context '#buzz? は' do
      it '5を渡されたときtrue を返す' do
        expect(subject.buzz?(5)).to be_truthy
      end

      it '3を渡されたときfalse を返す' do
        expect(subject.buzz?(3)).to be_falsey
      end
    end

    it '#fizz_buzz?(15) はtrue を返す' do
      expect(subject.fizz_buzz?(15)).to be_truthy
    end

    context '#solve は' do
      it '3の倍数の数値をFizz に変換する' do
        expect(subject.solve.at(2)).to eq 'Fizz'
      end

      it '5の倍数の数値をBuzz に変換する' do
        expect(subject.solve.at(4)).to eq 'Buzz'
      end

      it '15の倍数の数値をFizzBuzz に変換する' do
        expect(subject.solve.at(14)).to eq 'FizzBuzz'
      end

      it '1から100までの数値をFizzBuzz として処理する' do
        expect(subject.solve).to eq FizzBuzzAnswer
      end

      it '処理結果として配列を返す' do
        expect(subject.solve).to be_a Array
      end

      it '処理対象外の数値はそのまま数値を返す' do
        expect(subject.solve.first).to be_a Numeric
        expect(subject.solve.first).not_to be_a String
      end
    end
  end
end
