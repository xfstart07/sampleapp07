require 'spec_helper'
require 'capybara/rspec'

# global的，不推荐使用,目前还不知道其他方法，知道了在改
include Capybara::DSL

describe "UserPages" do

  subject { page }

  describe "signup page" do
    before {
      visit signup_path
    }

    it { should have_selector('h1',    text: 'Sign up') }
    #it { should have_selector('title', text: full_title('Sign up')) }
  end
end