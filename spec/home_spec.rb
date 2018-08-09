require_relative '../spec/helper/home_helpers'
#require_relative 'spec_helper'


describe 'Home -' do

  include HomeHelpers

  let(:page) { Page.new(@driver) }
  let(:login) { Login.new(@driver) }

  it 'should login with drivers credentials', :smoke do
    sleep 5
    verify_login_page_elements
    driver_login_credentials
  end

end
