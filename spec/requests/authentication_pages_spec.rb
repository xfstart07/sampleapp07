require 'spec_helper'
require 'capybara/rspec'

# global的，不推荐使用,目前还不知道其他方法，知道了在改
include Capybara::DSL

describe "AuthenticationPages" do
  subject { page }
  describe "signin page" do
    before { visit signin_path }

    it { should have_selector('h1', text: 'Sign in') }
    #it { should have_selector('title', text: 'Sign in') }
  end
end
