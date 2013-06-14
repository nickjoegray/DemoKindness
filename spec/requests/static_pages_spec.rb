require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Kindness Changes Everything'" do
      visit '/static_pages/home'
      page.should have_content('Kindness Changes Everything')
    end
  end

  describe "Support page" do 

    it "should have the content 'Support'" do
      visit '/static_pages/support'
      page.should have_content('Support')
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
  end

  describe "Blog page" do 

    it "should have the content 'Blog'" do 
      visit '/static_pages/blog'
      page.should have_content('Blog')
    end
  end

  it "should have the right title" do 
    visit '/static_pages/home'
    page.should have_selector('title', :text => "Kindness Changes Everything")
  end

end