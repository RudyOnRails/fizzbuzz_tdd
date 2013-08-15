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
      if divisible_by_three(numb)
        str += "fizz"
      elsif divisible_by_five(numb)
        str += "buzz"
      elsif divisible_by_both(numb)
        str += "fizzbuzz"
      else
        str += numb.to_s
      end
    end
    str
  end

  def divisible_by_three(numb)
    if numb % 3 == 0 
      true
    else
      false
    end
  end

  def divisible_by_five(numb)
    if numb % 5 == 0
      true
    else
      false
    end
  end

  def divisible_by_both(value)
    if divisible_by_three(value) && divisible_by_five(value)
      true
    else
      false
    end
  end



end