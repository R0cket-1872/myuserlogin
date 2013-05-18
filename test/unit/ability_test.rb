require 'test_helper'

class AbilityTest < ActiveSupport::TestCase
  test "Non-admins should not be allowed to delete users" do
  user = users(:one)
  ability = Ability.new(user)
  assert ability.cannot?(:destroy, User.new)
end

 test "Admins can manage all" do
 user = users(:two)
 user.toggle!(:admin)
 ability = Ability.new(user)
 assert ability.can?(:manage, :all) 
end

end
