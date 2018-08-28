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
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
