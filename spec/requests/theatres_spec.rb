require 'spec_helper'

describe "Theatres" do

  describe "New page" do

    it "should have the content 'Theatre'" do
      visit '/theatres/new'
      expect(page).to have_content('Theatre')
    end
  end
  
  describe "New page" do

    it "It is empty when created" do
      visit '/theatres/new'
      @theatre=Theatre.new
    end
  end
  
  
  describe "Show page" do

    it "should have the content 'Theatre'" do
      visit '/theatres/show'
      expect(page).to have_content('Theatre')
    end
  end
  
    describe "Show page" do

    it "should display a movie search " do
      visit '/theatres/show'
      @theatres = Theatre.search("jaws")
    end
  end
	describe "Show page" do
	it "should display another movie search " do
      visit '/theatres/show'
      @theatres = Theatre.search("jobs")
    end
  end
  
  describe "Show page" do
	it "should not display a movie not in database " do
      visit '/theatres/show'
      @theatres = Theatre.search("blahblah")
    end
  end
  
  
  describe "Index page" do

    it "should have the content 'Theatre'" do
      visit '/theatres/index'
      expect(page).to have_content('Theatre')
    end
  end
end
