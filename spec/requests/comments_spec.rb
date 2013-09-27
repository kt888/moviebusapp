require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/comments/home'
      expect(page).to have_content('home')
    end
  end
end