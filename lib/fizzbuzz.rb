# thefonso
# mattcowski

class FizzBuzz
  attr_reader :range

  def initialize 
    @range = 1..100
  end

  def play(range)
    str = []
    range.each do |numb|
      if divisible_by_three(numb)
        str << "fizz"
      elsif divisible_by_five(numb)
        str << "buzz"
      elsif divisible_by_both(numb)
        str << "fizzbuzz"
      else
        str << numb
      end
    end
    str*", "
  end

  def divisible_by_three(numb)
    numb % 3 == 0
  end

  def divisible_by_five(numb)
    numb % 5 == 0
  end

  def divisible_by_both(value)
    divisible_by_three(value) && divisible_by_five(value)
  end

end

if __FILE__ == $0
  buzz = FizzBuzz.new
  puts buzz.play(1..5)
end