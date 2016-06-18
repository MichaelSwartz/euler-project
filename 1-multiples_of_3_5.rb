"""
Find the sum of all the multiples of 3 or 5 below 1000.
"""

total = 0
for n in 1...1000
    if n % 3 == 0 or n % 5 == 0
        total += n
    end
end

puts total

