require 'rails_helper'

RSpec.describe Prime, type: :model do
  describe 'Prime number tests' do
    it 'Should return true for prime number' do
      @result = Prime.prime?('2')
      expect(@result).to be true
    end

    it 'Should return false for 0' do
      @result = Prime.prime?('0')
      expect(@result).to be false
    end

    it 'Should return false for 1' do
      @result = Prime.prime?('1')
      expect(@result).to be false
    end

    it 'Should return false for a number that is not prime' do
      @result = Prime.prime?('4')
      expect(@result).to be false
    end

    it 'Should return false for a string that is not a number' do
      @result = Prime.prime?('Hello world!')
      expect(@result).to be false
    end
  end
end
