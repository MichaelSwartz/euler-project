"""
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
"""

require 'prime'

puts Prime.instance.first(10001).last

# or, without using 'prime':

require 'set'

$non_primes = Set.new
prime_count = 0
n = 1
highest_prime = 1

def sieve(prime)
    multiple = prime
    while multiple < 200000
        multiple += prime
        $non_primes << multiple
    end
end

while prime_count < 10001
    n += 1
    unless $non_primes.include?(n)
        prime_count += 1
        highest_prime = n
        sieve(n)
    end
end

puts highest_prime
