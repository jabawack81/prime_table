# class to generate an array of prime number
# extends the core class array so we inerit the loop methods
class PrimeArray < Array
  require_relative "prime_integer"

  # return an array of prime numbers
  # parameters:
  #   quantity: (integer) the length of the array returned
  #   start: (integer) the offset starting integer of the array
  # result:
  #   A PrimeArray object
  def self.get_primes(quantity = 10, start = 2)
    # create an enumerator to loop trought
    enumerator = Enumerator.new do |primes|
      integer = start
      loop do
        # if the current integer is prime we can add it to the returned array
        # the if statement is needed because on the first run of the loop
        # integer will be the start parameter so we need to check if it is a
        # prime before add it
        primes << integer if integer.prime?
        # gets the next prime number after the current integer
        integer = integer.next_prime
      end
    end
    enumerator.take quantity
  end
end
