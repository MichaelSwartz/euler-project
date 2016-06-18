"""
Find the largest palindrome made from the product of two 3-digit numbers.
"""

require 'set'

products = Set.new

(100...1000).each do |n1|
    (n1...1000).each do |n2|
        products << n1 * n2
    end
end

sorted_products = products.to_a.sort {|x, y| y <=> x}

sorted_products.each do |n|
    n_string = n.to_s
    if n_string == n_string.reverse
        puts n_string
        break
    end
end
