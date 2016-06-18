"""
By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
"""

old_n = 1
new_n = 1
total = 0

while new_n < 4000000
    if new_n % 2 == 0
        total += new_n
    end

    next_number = new_n + old_n
    old_n = new_n
    new_n = next_number
end

puts total
