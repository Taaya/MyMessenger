require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'My Messenger'" do
      visit '/static_pages/home'
      expect(page).to have_content('My messenger')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end
end