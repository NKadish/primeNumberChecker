class Prime

  def self.prime?(a)
    num = a.to_i
    # Wasn't catching 0 or 1, was saying they were prime, added a catch
    if num == 0 || 1
      return false
    end
    
    (2..(Math.sqrt(num))).each do |n|
      return false if num % n == 0
    end
    true
  end

end