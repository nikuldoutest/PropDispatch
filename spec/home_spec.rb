require_relative 'spec_helper'


describe 'Home -' do

  include HomeHelpers

  let(:page) { Page.new(@driver) }

  it 'should login with drivers credentials', :smoke do
    login_driver
  end



end
