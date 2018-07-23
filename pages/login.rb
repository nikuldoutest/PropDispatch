require_relative 'page'

class Login < Page

  USERNAME = {class: ' -bgImg'}
  PASSWORD= {class: 'l-container'}
  PROPDISPATCH = {accessibility_id: 'PropDispatch PropDispatch'}
  FORGOT_PASSWORD = {accessibility_id: 'Forgot Password'}
  LOGIN_BUTTON = {accessibility_id: 'LOG IN'}


  def ui_elements
    yield PROPDISPATCH
    yield FORGOT_PASSWORD
  end

  #Enter the driver's username value
  def enter_username_value


  end

  #Enter the driver's password value
  def enter_password_value


  end

  #Click on the login button
  def click_login_button

  end



end