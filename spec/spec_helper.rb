require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require 'bundler'
require 'appium_lib'
#require 'rspec/retry'
#require_relative '../lib/login_credentials'

Dir['./spec/helper/**/*.rb'].each { |file| require file }


desired_caps = {
    caps: {
        appiumVersion: '1.6.2',
        platformName: 'Android',
        platformVersion: '7.1.1',
        deviceName: '192.168.232.2:5555',
        app: 'C:\Users\OHM\PD\PropDispatch\PD NextGen\android-debug.apk',
        appPackage: 'com.propdispatch.pdnextgen',
        appActivity: 'com.propdispatch.pdnextgen.MainActivity',
        uuid: '192.168.232.2:5555'
    }
}

@driver = Appium::Driver.new(desired_caps)
@driver.start_driver


RSpec.configure do |config|

  config.before(:each) do |example|
    # default browser is chrome; others can passed as variables
    case ENV['platformName'] ||= 'android'
    when 'android'
      @driver = Appium::WebDriver.for :remote, :desired_caps => :android
    when 'ios'
      @driver = Appium::Driver.for :remote, :desired_caps => :ios

    end
  end


  config.before(:each) do
    @driver.manage.delete_all_cookies
  end


  config.after(:each) do |example|
    @driver.quit
  end
end
