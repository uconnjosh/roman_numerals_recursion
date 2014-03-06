require('rspec')
require('roman_numerals')


describe('roman_numerals') do 
	it('takes a number from 1-10 and returns its roman numeral equivalent') do 
		roman_numerals(6).should(eq(["V","I"]))
	end
	it('takes a number above 10, returning its roman numeral equivalent up to 100') do
		roman_numerals(54).should(eq(["L", "I", "V"]))
	end
	it('takes any number up to 3999 and returns its roman numeral equivalent') do
		roman_numerals(3999).should(eq(["M", "M", "M", "C", "M", "X", "C", "I", "X"]))
	end
end
