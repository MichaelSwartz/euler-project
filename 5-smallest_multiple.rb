"""
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
"""

puts (2..20).reduce(:lcm)
