require 'test_helper'
include Devise::TestHelpers

class HomeControllerTest < ActionController::TestCase
setup do
	@user = users(:one)
	sign_in @user  
	end

 test "should get index" do
    get :index
    assert_response :success
  end

  test "should get secret if user logged in" do
  get :secret
    assert_response :success
  
  end    

end
