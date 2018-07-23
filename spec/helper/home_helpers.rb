require_relative '../spec_helper'
require_relative '../../pages/page'




module HomeHelpers

  RSpec.configure do |config|
    config.before(:each) do
      @login = Login.new(@driver)
      @page = Page.new(@driver)
    end
  end


  def verify_login_elements
    login.ui_elements do |ui_elemnt|
      expect(page.ui_element_displayed?(ui_elemnt)).to be_truthy
    end
  end


  def driver_login_credentials

  end


end

