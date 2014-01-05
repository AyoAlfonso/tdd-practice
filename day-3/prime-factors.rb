require 'prime'

def prime_factors(num)
  return [num] if Prime.prime? num
  convert_factors(Prime.prime_division(num))
end

private

def convert_factors(factors)
  ret = []
  factors.each do |fact|
    ret.concat([fact[0]] * fact[1])
  end
  ret
end