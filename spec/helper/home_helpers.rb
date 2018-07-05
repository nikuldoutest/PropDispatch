require_relative '../spec_helper'
require_relative '../../pages/page'




module HomeHelpers

  RSpec.configure do |config|
    config.before(:each) do
      @page = Page.new(@driver)
    end
  end


  def login_driver

  end

  #Verify home page elements

  def load_home_page
    home.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
  end

  #Verify header elements

  def header_elements
    header.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
  end

  #Sign up for new user

  def sign_up_new_user
    header.signup_link_click
    signup.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
    signup.signup_user_information
  end


end

