require 'test_helper'
include Devise::TestHelpers

class UsersControllerTest < ActionController::TestCase

    setup do
	@user = users(:one)
	sign_in @user  
	end
  

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

 
  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  
end
