require_relative 'page'

class Login < Page

  USERNAME = {xpath: '//android.webkit.WebView[@content-desc="PropDispatch"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText'}
  PASSWORD = {xpath: '//android.webkit.WebView[@content-desc="PropDispatch"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText'}
  PROPDISPATCH = {accessibility_id: 'PropDispatch PropDispatch'}
  FORGOT_PASSWORD = {accessibility_id: 'Forgot Password'}
  LOGIN_BUTTON = {accessibility_id: 'LOG IN'}

#Veryfy all elements on the login screen
  def ui_elements
    yield USERNAME
    yield PASSWORD
    yield PROPDISPATCH
    yield FORGOT_PASSWORD
    yield LOGIN_BUTTON
  end

  #Enter the driver's username
  def driver_username
    clear_then_enter 4034023585, USERNAME
  end

  #Enter the driver's password
  def driver_password
    clear_then_enter 123456, PASSWORD
  end

  #Click on the login button
  def login_button_click
    click LOGIN_BUTTON
  end

end