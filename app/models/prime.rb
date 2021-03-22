class Prime

  def self.prime?(a)
    # Turns the input from a string into an integer
    num = a.to_i
    # Wasn't catching 0 or 1, was saying they were prime, added a catch
    if num == 0 || 1
      return false
    end
    # Checks each number up to their sqrt, looks to see if there is no remainder after num % n, if there is it is true for that n 
    (2..(Math.sqrt(num))).each do |n|
      return false if num % n == 0
    end
    true
  end

end