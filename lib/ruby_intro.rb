# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum(array)
  return 0 if array.empty?          
  return array.first if array.size == 1

  array.max(2).sum 
end


def sum_to_n?(array, n)
  return false if array.size < 2 

  complements = {}
  array.each do |num|
    return true if complements[num] 
    complements[n - num] = true
  end

  false 
end


# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  return false if s.empty? 
  first_char = s[0].downcase 

  first_char =~ /[a-z]/ && first_char !~ /[aeiou]/ ? true : false

end


def binary_multiple_of_4?(s)
  return false if s.empty? || s.match(/[^01]/)
  s[-2..-1] == '00' || s == '0'
end


# Part 3


class BookInStock
  attr_accessor :isbn, :price

  def Create(isbn, price)
    raise ArgumentError, 'ISBN cannot be null' if isbn.empty?
    raise ArgumentError, 'Price must be > 0' if price < 0

    @isbn = isbn
    @price = price

  end

  def price_to_string() :
    format("$%.2f",@price)
    

end
