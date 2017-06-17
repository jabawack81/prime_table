#!/usr/bin/env ruby

require "test/unit"
require_relative "../lib/prime_integer"
require_relative "../lib/prime_array"
require_relative "../app"

# test for the exercise
class PrimeExerciseTest < Test::Unit::TestCase
  # test the prime number extension for the integer class
  def test_prime_integer
    assert_true(3.prime?)
    assert_false(4.prime?)
    assert_equal(3, 2.next_prime)
  end

  # test the prime array class
  def test_prime_array
    #  test the default behaviour
    assert_equal(
      [2, 3, 5, 7, 11, 13, 17, 19, 23, 29],
      PrimeArray.get_primes
    )
    # test get x prime number
    assert_equal(
      [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31],
      PrimeArray.get_primes(11)
    )
    assert_equal(
      [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47],
      PrimeArray.get_primes(15)
    )
    #  test get x prime number after a integer
    assert_equal(
      [5, 7, 11, 13, 17, 19, 23, 29, 31, 37],
      PrimeArray.get_primes(10, 4)
    )
    assert_equal(
      [23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83],
      PrimeArray.get_primes(15, 20)
    )
  end
end
