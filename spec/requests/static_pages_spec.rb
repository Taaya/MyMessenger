require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'My Messenger'" do
      visit '/'
      expect(page).to have_content('My Messenger')
    end

    it "should have the base title" do
      visit '/'
      expect(page).to have_title("My Messenger")
    end

    it "should not have a custom page title" do
      visit '/'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit 'help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit 'help'
      expect(page).to have_title("My Messenger | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit 'about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit 'about'
      expect(page).to have_title("My Messenger | About Us")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit 'contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit 'contact'
      expect(page).to have_title("My Messenger | Contact")
    end
  end
end