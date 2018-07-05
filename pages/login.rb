require_relative 'page'

class Login < Page

  USERNAME = {class: 'hero-bgImg'}
  PASSWORD= {class: 'l-container'}
  PROPDISPATCH = {accessibility_id: 'PropDispatch PropDispatch'}
  FORGOT_PASSWORD = {accessibility_id: 'Forgot Password'}


  def ui_elements
    yield PROPDISPATCH
    yield FORGOT_PASSWORD
  end

  #Enter the username value
  def enter_username_value


  end

  #Enter the password value
  def enter_password_value


  end

  #Click  on the login button
  def click_login_button

  end

end