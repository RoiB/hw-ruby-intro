# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr
    return arr.inject(0){|total,x| total+=x}
  else
    return 0
  end
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr.sort_by{|x| -x}.first(2).inject(:+)
  end
end

def sum_to_n? arr, n
  hash = Hash.new
  arr.each do |x|
    if hash.include?(x)
      return true
    else
      hash[n-x] = x
    end
  end
    false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length==0
    return false
  else
    # !"aeiou".include?(s.split("").first.downcase)
    return s[0].downcase[/[b-df-hj-np-tv-z]/] != nil
  end
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  elsif s[/[^01]/] == nil
    return s.to_i % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn == "" or price <= 0
      raise ArgumentError 
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%.2f" % price
  end
end
