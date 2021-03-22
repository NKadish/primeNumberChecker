require 'rails_helper'

RSpec.describe Prime, type: :model do
  describe 'Prime number tests' do
    it 'Should return true for prime number' do
      @result = Prime.send(:prime?, '2')
      expect(@result).to be true
    end
  end
end
