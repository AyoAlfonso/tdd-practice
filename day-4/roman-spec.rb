require_relative 'roman.rb'


describe '#roman' do
  context 'basic conversion' do
    it 'knows 1' do
      roman(1).should eq 'I'
    end

    it 'knows 5' do
      roman(5).should eq 'V'
    end

    it 'knows 10' do
      roman(10).should eq 'X'
    end

    it 'knows 50' do
      roman(50).should eq 'L'
    end

    it 'knows 100' do
      roman(100).should eq 'C'
    end

    it 'knows 500' do
      roman(500).should eq 'D'
    end

    it 'knows 1000' do
      roman(1000).should eq 'M'
    end
  end

  context 'postfixing' do
    it 'works for 1' do
      roman(2).should eq 'II'
      roman(3).should eq 'III'
    end
    it 'works for 5' do
      roman(6).should eq 'VI'
      roman(7).should eq 'VII'
      roman(8).should eq 'VIII'
    end
    it 'works for 10' do
      roman(11).should eq 'XI'
      roman(12).should eq 'XII'
      roman(13).should eq 'XIII'
      roman(15).should eq 'XV'
      roman(16).should eq 'XVI'
      roman(20).should eq 'XX'
      roman(27).should eq 'XXVII'
    end
    it 'works for 50' do
      roman(51).should eq 'LI'
      roman(53).should eq 'LIII'
      roman(55).should eq 'LV'
      roman(56).should eq 'LVI'
      roman(60).should eq 'LX'
      roman(72).should eq 'LXXII'
    end

    it 'works for 100' do
      roman(101).should eq 'CI'
      roman(127).should eq 'CXXVII'
      roman(172).should eq 'CLXXII'
    end

    it 'works for 500' do
      roman(501).should eq 'DI'
      roman(551).should eq 'DLI'
      roman(683).should eq 'DCLXXXIII'
    end
    it 'works for 1000' do
      roman(1001).should eq 'MI'
      roman(1853).should eq 'MDCCCLIII'
    end
  end

  context 'prefixing' do
    it 'works for 5' do
      roman(4).should eq 'IV'
    end
    it 'works for 10' do
      roman(9).should eq 'IX'
      roman(28).should eq 'XXVIII'
    end
    it 'works for 50' do
      roman(40).should eq 'XL'
      roman(43).should eq 'XLIII'
      roman(49).should eq 'XLIX'
    end
    it 'works for 100' do
      roman(90).should eq 'XC'
      roman(94).should eq 'XCIV'
      roman(99).should eq 'XCIX'
    end
    it 'works for 500' do
      roman(400).should eq 'CD'
      roman(449).should eq 'CDXLIX'
      roman(499).should eq 'CDXCIX'
    end
    it 'works for 1000' do
      roman(900).should eq 'CM'
      roman(964).should eq 'CMLXIV'
      roman(999).should eq 'CMXCIX'
    end
  end

end