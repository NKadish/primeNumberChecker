require 'rails_helper'

RSpec.describe "PrimeCheckers", type: :request do
  describe "GET /" do
    it "Loads the app" do
      get '/'
      expect(response).to have_http_status(200)
    end

    it "Successfully calculates and shows if the input is prime" do
      visit '/'
      fill_in "a", with: "2"
      click_button "Calculate!"
      expect(page).to have_content('2 is prime!')

    end

  end
end
