"""
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
"""

range = 1..100

sum_squares = range.inject { |total, n| total + (n ** 2)}
square_sums = range.reduce(:+) ** 2

puts square_sums - sum_squares
