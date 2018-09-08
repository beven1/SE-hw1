# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
    if arr.any?
        return arr.reduce(0, :+)
    else
        return 0
    end
end

def max_2_sum(arr)
    if arr.count > 2
        return arr.max(2).reduce(:+)
    elsif arr.count == 1
        return arr[0]
    elsif arr.count == 2
        return arr.reduce(0, :+)
    else
        return 0
    end
end

def sum_to_n?(arr, n)
  if arr.count > 1
    arr.each do |x| 
      temp = n - x
      if arr.include?(temp) == true && temp != x
        return true
      elsif arr.include?(temp) == false && x.equal?(arr.last) || x.equal?(arr.last)
        return false
      end
    end
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  consonants = "bcdfghjklmnpqrstvwxyz".chars
  if s.empty? == false
    if consonants.include?(s[0].downcase)
        return true
    else
        return false
    end
  else
    return false
  end
end

def binary_multiple_of_4?(s)
  binstr = s.upack('B*')
  if binstr.count('01') == binstr.size
    if /^[10]*00$/.match(binstr)
      return true
    else
      return false
    end
  else
    puts "'#{s}' is not a valid binary number!"
    return false
  end
end

# Part 3

class BookInStock

    def initialize(isbn, price)
    
        if isbn.empty? == true
            raise ArgumentError, "empty array"
        else
            @isbn = isbn
        end
        
        if price <= 0
            raise ArgumentError, "price less than zero"
        else
            @price = price
        end
    end
    
    def price=(new_price)
        @price = new_price
    end
    
    def price
        return @price
    end
    
    def isbn=(new_isbn)
        @isbn = new_isbn
    end
    
    def isbn
        return @isbn
    end
    
    def price_as_string()
        format = "%0.2f" % @price
        dollar_value, cent_value = format.split '.'
        return "$#{dollar_value}.#{cent_value}"
    end
end
