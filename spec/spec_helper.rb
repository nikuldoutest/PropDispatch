require 'rspec'
require 'rubygems'
require 'bundler'
require 'appium_lib'
require 'selenium-webdriver'
#require 'rspec/retry'
#require_relative '../lib/login_credentials'


Dir['./spec/helper/*.rb'].each { |file| require file }

Bundler.require(:test_frameworks, :test_harness, :libraries, :debugging)

desired_caps = {
      caps: {
        appiumVersion: '1.6.2',
        platformName: 'Android',
        platformVersion: '8.0',
        deviceName: '192.168.232.2:5555',
        app: 'C:\Users\OHM\GitHub\PropDispatch\PD NextGen\android-debug.apk',
        appPackage: 'com.propdispatch.pdnextgen',
        appActivity: 'com.propdispatch.pdnextgen.MainActivity',
        uuid: '192.168.232.2:5555'
        }
  }


RSpec.configure do |config|

  config.before(:each) do |example|
    # default browser is chrome; others can passed as variables
    case ENV['platformName'] ||= 'android'
    when 'android'
      @driver = Appium::Driver.new(desired_caps, true).start_driver
    when 'chrome'
      @driver = Selenium::WebDriver.for :chrome
    when 'firefox'
      @driver = Selenium::WebDriver.for :firefox
    end
  end

 config.after(:each) do |example|
    @driver.quit
 end

end