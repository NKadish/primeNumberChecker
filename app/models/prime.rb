class Prime

  def self.prime?(a)
    num = a.to_i
    (2..(num - 1)).each do |n|
      return false if num % n == 0
    end
    true
  end

end