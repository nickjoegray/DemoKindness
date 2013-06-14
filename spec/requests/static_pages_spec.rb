require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Kindness Changes Everything'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Kindness Changes Everything')
    end

    it "should have the title 'Kindness Changes Everything | Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Kindness Changes Everything | Home")
    end
  end

  describe "Support page" do

    it "should have the h1 'Support'" do
      visit '/static_pages/support'
      page.should have_selector('h1', :text => 'Support')
    end

    it "should have the title 'Kindness Changes Everything | Support'" do
      visit '/static_pages/support'
      page.should have_selector('title',
                        :text => "Kindness Changes Everything | Support")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end

    it "should have the title 'Kindness Changes Everything | About'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Kindness Changes Everything | About")
    end
  end

describe "Blog page" do

    it "should have the h1 'Blog'" do
      visit '/static_pages/blog'
      page.should have_selector('h1', :text => 'Blog')
    end

    it "should have the title 'Kindness Changes Everything | Blog'" do
      visit '/static_pages/blog'
      page.should have_selector('title',
                        :text => "Kindness Changes Everything | Blog")
    end
  end

end