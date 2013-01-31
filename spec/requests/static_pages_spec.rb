require 'spec_helper'
require 'capybara/rspec'

# global的，不推荐使用,目前还不知道其他方法，知道了在改
include Capybara::DSL

describe "StaticPages" do
  # describe "GET /static_pages" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get static_pages_index_path
  #     response.status.should be(200)
  #   end
  # end
  
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
   
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title}")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => ' | Home')
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end
  
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
      page.should have_selector('title', :text => "#{base_title} | About Us")
    end
  end
  
  describe "Contact page" do 
    it "should have the content 'Contact'" do 
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end
  end
end
