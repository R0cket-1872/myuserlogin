require 'test_helper'

class UserTest < ActiveSupport::TestCase

test "should not save user without Username" do
  user = User.new
  assert !user.save, "Saved the user without a username"
end

test "should not save user without profile" do
  user = User.new
  assert !user.save, "Saved the user without a profile"
end

test "should save with a unique username" do
    user = User.new
    user.email = "mail@mail.com"
    user.username = "mark_nutt"
    user.profile = "Test user"
    assert !user.save
    assert !user.errors[:username].empty?
    
  end


end


