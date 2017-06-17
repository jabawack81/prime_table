#!/usr/bin/env ruby

# gem to print the table in the STDOUT
require "terminal-table"
# gem to manage the parameters
require "trollop"

# PrimeArray object with all the actual code for the exercise
require_relative "lib/prime_array"

# configure the parameters
opts = Trollop::options do
  opt :quantity, "the number of row/column of the table", default: 10
  opt :start, "the offset for the table", default: 2
end

# get an array with the prime numbers as seed for the table
primes = PrimeArray.get_primes opts.quantity, opts.start

# array for all the rows of the table
rows = []

# create the first row of the table with simply all the prime numbers
# and a corner cell
rows[0] = [" "] + primes

# loop trought all the prime numbers to create a new row in the table
primes.each_with_index do |p, index|
  # populate each row with the relative prime number and the
  # moltiplication of that number with all the other
  rows[index + 1] = [p] + primes.map{ |pr| p * pr }
end

# create a terminal table object to be printed out in a human readable form
table = Terminal::Table.new do |t|
  rows.each do |row|
    t.add_row row
  end
  t.style = { all_separators: true}
end

# printout the table
puts table
