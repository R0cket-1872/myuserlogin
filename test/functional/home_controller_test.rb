require 'test_helper'
include Devise::TestHelpers

class HomeControllerTest < ActionController::TestCase

  test "should get secret if user logged in" do
  @user = users(:one)
  sign_in @user
  get :secret
    assert_response :success
  
  end    

end
