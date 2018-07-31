require_relative '../spec_helper'
require_relative '../../pages/page'
require_relative '../../pages/login'



module HomeHelpers

  RSpec.configure do |config|
    config.before(:each) do
      @login = Login.new(@driver)
      @page = Page.new(@driver)
    end
  end


  def verify_login_page_elements
    login.ui_elements do |ui_elemnt|
      expect(page.ui_element_displayed?(ui_elemnt)).to be_truthy
    end
  end


  def driver_login_credentials
    login.driver_username
    login.driver_password
    login.login_button_click
  end
end


