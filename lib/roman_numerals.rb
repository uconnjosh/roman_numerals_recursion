def roman_numerals(numb)
	converted_romans = []
	if numb <= 10
		return answer_holder(numb)
	 elsif numb > 10 && numb <= 100
		return answer_holder((numb / 10)*10) + roman_numerals((numb % 10))
	 elsif numb > 100 && numb <= 1000
	 	return answer_holder((numb / 100)*100) + roman_numerals((numb % 100))
	 elsif numb > 1000 && numb <= 3999
	 	return answer_holder((numb / 1000)*1000) + roman_numerals((numb % 1000))
	 end
end

def answer_holder(numb)
  romans = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
  answer = []
  number = numb
  current_number = numb
  while number > 0
        if number == 4
          return answer.unshift("I","V")
        elsif number == 9
          return answer.unshift("I","X")
         elsif number == 40
          return answer.unshift("X","L")
         elsif number == 90
          return answer.unshift("X","C")
         elsif number == 400
          return answer.unshift("C","D")
         elsif number == 900
          return answer.unshift("C","M")
        else
        answer.unshift(roman_converter(number))
        end
        current_key = roman_converter(number)
            if current_key == "I"
             current_number = 1 
            elsif current_key == "V"
              current_number = 5
            elsif current_key == "X"
          current_number = 10
            elsif current_key == "L"
          current_number = 50
            elsif current_key == "C"
          current_number = 100
            elsif current_key == "D"
          current_number = 500
            elsif current_key == "M"
          current_number = 1000
         
    end
      number = number - current_number 
  end 
  answer
end  

def roman_converter(numb)
  number = numb
  symbol_return = " "
  romans = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
  romans.each do |symbol, value|
    if number == value
      return symbol
    elsif number % value == 0
      return symbol
  end
end
answer
end

puts roman_numerals(3999)


