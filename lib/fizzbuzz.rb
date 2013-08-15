# thefonso
# mattcowski

class FizzBuzz
  attr_reader :range

  def initialize 
    @range = 1..100
  end

  def play(range)
    str = ""
    range.each do |numb|
      str += divisible_by_three(numb).to_s
      str += divisible_by_five(numb).to_s
      str += divisible_by_both(numb).to_s
    end
    str
  end

  def divisible_by_three(numb)
    if numb % 3 == 0 
      "fizz"
    else
      numb
    end
  end

  def divisible_by_five(numb)
    if numb % 5 == 0
      "buzz"
    else
      numb
    end
  end

  def divisible_by_both(value)
    "fizzbuzz!" unless !divisible_by_three(value) && !divisible_by_five(value)
  end



end