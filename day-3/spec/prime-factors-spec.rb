require_relative '../prime-factors.rb'


describe '#prime_factors' do
  it 'returns prime numbers' do
    prime_factors(2).should == [2]
    prime_factors(3).should == [3]
  end

  it 'knows 1 is not prime' do
    prime_factors(1).should == []
  end

  it 'can factor composite numbers' do
    # prime_factors(4).should == [2,2]
    prime_factors(8).should == [2,2,2]
    # prime_factors(10).should == [5,2]
  end
end