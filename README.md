# Prime table Generator

Script to generate and print on the STDOUT a moltiplication table for the prime numbers.

## Install

To install the script clone/download this prepository:

````
git clone https://github.com/jabawack81/prime_table.git
````

then cd into the folder

````
cd prime_table
````

the install the dependencies with

````
bundle install
````

## Run

to run the script from inside the script folder:

````
ruby app.rb
````

to generate a 10 number table starting from 1.
The script accepts three parameters

````bash
-q, --quantity=<i> the number of row/column of the table (default: 10)
-s, --start=<i>    the offset for the table (default: 2)
-h, --help         Show this message
````
## Test

to test the script from inside the script folder:

````
ruby test/test.rb
````
