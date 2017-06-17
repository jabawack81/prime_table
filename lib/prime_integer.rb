# extend the integer class
# to add functionality needed in this exercise
class Integer < Numeric

  # return true if the number is prime
  def prime?
    # check to avoid checking obvious numbers
    # 1 or a negative integer is cannot be prime
    # so retunr false directly
    return false if self <= 1
    # Even integers except 2 are not prime by definition
    # so retunr false directly
    return false if even? and self > 2

    # check if the the integer is divisible by any number from 2 to
    # the square root of itself if so is not prime and we return true
    2.upto(Math.sqrt(self).to_i) do |int|
      return false if (self % int).zero?
    end

    # if the loop didn't found anything we can return true
    # because the number is prime
    true
  end

  # return the next prime number after the current number
  def next_prime
    next_int = self + 1
    next_int += 1 until next_int.prime?
    next_int
  end
end
