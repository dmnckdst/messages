require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Messages'" do
      visit root_path
      expect(page).to have_content('Messages')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("Welcome to Messages")
    end

    it "should have a custom page title" do
      visit root_path
      expect(page).to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit help_path
      expect(page).to have_title("Welcome to Messages | Help")
    end

  end

  describe "About page" do

    it "should have the content 'About'" do
      visit about_path
      expect(page).to have_content('About')
    end

    it "should have the right title" do
      visit about_path
      expect(page).to have_title("Welcome to Messages | About")
    end
  end

  describe "Contact Page" do 

  	it "should have the content 'Contact'" do 
  		visit contact_path
  		expect(page).to have_content('Contact')
  		# expect(page).to have_title("Welcome to Messages | Contact")
  	end
  end		
end
