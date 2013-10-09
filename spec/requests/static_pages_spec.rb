require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path }
    it "should have the content 'Messages'" do
      expect(page).to have_content('Messages')
    end

    it "should have the base title" do
      expect(page).to have_title("Welcome to Messages")
    end

    it "should have a custom page title" do
      expect(page).to have_title('| Home')
    end
  end

  describe "Help page" do
    before { visit help_path }

    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      expect(page).to have_title("Welcome to Messages | Help")
    end

  end

  describe "About page" do
    before { visit about_path }

    it "should have the content 'About'" do
      expect(page).to have_content('About')
    end

    it "should have the right title" do
      expect(page).to have_title("Welcome to Messages | About")
    end
  end

  describe "Contact Page" do 
    before { visit contact_path }

  	it "should have the content 'Contact'" do 
  		expect(page).to have_content('Contact')
  	end
  	
  end		
end
