require_relative '../spec/helper/home_helpers'

include HomeHelpers

describe 'Home -' do

  let(:page) { Page.new(@driver) }
  let(:login) { Login.new(@driver) }

  it 'should login with drivers credentials', :smoke do
    verify_login_page_elements
    driver_login_credentials
  end

end
