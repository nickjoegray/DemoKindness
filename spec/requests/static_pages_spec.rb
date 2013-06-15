require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit '/static_pages/home' }

    it "should have the h1 'Kindness Changes Everything'" do
      page.should have_selector('h1', :text => "Kindness Changes Everything")
    end

    it "should have the base title" do
      page.should have_selector('title', :text => "Kindness Changes Everything")
    end

    it "should not have a custom page title" do
      page.should_not have_selector('title', :text => "| Home")
    end
  end

  describe "Support page" do
    before { visit '/static_pages/support' }

    it "should have the h1 'Support'" do
      page.should have_selector('h1', :text => "Support")
    end

    it "should have the base title" do
      page.should have_selector('title', :text => "Kindness Changes Everything")
    end

    it "should not have a custom page title" do
      page.should_not have_selector('title', :text => "| Support")
    end
  end

  describe "About page" do
    before { visit '/static_pages/about' }

    it "should have the h1 'About'" do
      page.should have_selector('h1', :text => "About")
    end

    it "should have the base title" do
      page.should have_selector('title', :text => "Kindness Changes Everything")
    end

    it "should not have a custom page title" do
      page.should_not have_selector('title', :text => "| About")
    end
  end

describe "Blog page" do
  before {visit '/static_pages/blog' }

    it "should have the h1 'Blog'" do
      page.should have_selector('h1', :text => "Blog")
    end

    it "should have the base title" do
      page.should have_selector('title', :text => "Kindness Changes Everything")
    end

    it "should not have a custom page title" do
      page.should_not have_selector('title', :text => "| Blog")
    end
  end

end