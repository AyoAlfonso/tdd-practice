def roman(num)
  return basics[num] if basics.has_key? num
  ret = ''
  larger_numbers.each_with_index do |val, i|
    while num >= val
      ret += basics[val]
      num -= val
    end

    larger_numbers.each do |smaller_val|
      next if smaller_val >= val
      single_place = get_single_place(num, val.to_s.length - 1)
      if single_place % 9 == 0
        if single_place == (val - smaller_val)
          ret += basics[smaller_val] + basics[val]
          num -= single_place
        end
      else
        single_place = get_single_place(num, val.to_s.length)
        if single_place == (val - smaller_val)
          ret += basics[smaller_val] + basics[val]
          num -= single_place
        end
      end
    end

    num = num % val
  end
  ret = ret + (basics[1] * num)
end

def basics
  { 1    => 'I',
    5    => 'V',
    10   => 'X',
    50   => 'L',
    100  => 'C',
    500  => 'D',
    1000 => 'M'
  }
end

def larger_numbers
  basics.keys.sort!.reverse
end

def get_single_place(num, place)
  amount = 10 ** (place - 1)
  (num.to_i/amount) * amount
end