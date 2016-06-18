"""
What is the largest prime factor of the number 600851475143 ?
"""

n = 600851475143
divisor = 3
# because n is odd we can start with the smallest odd prime and skip even numbers

while n / 2 >= divisor
    if n % divisor == 0
        n /= divisor
    else
        divisor += 2
    end
end

puts n
