require_relative '../fizz-buzz.rb'

describe '#fizz_buzz' do

  it 'returns "fizz" if the number is divisible by 3' do
    fizz_buzz(3).should == 'fizz'
  end

  it 'returns "buzz" if the number is divisible by 5' do
    fizz_buzz(5).should == 'buzz'
  end

  it 'returns "fizzbuzz" if the number is divisible by 3 and 5' do
    fizz_buzz(15).should == 'fizzbuzz'
  end

  it 'returns the number if it is not divisible by 3 or 5' do
    fizz_buzz(1).should == 1
  end

end