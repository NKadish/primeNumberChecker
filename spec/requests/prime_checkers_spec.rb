require 'rails_helper'

RSpec.describe "PrimeCheckers", type: :request do
  describe "GET /" do
    it "Loads the app" do
      get '/'
      expect(response).to have_http_status(200)
    end

    it "Successfully calculates and shows if the input is prime" do
      get '/'
      fill_in "number", with: "2"
      
    end

  end
end
