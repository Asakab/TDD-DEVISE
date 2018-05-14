require 'test_helper'

class UserTest < ActiveSupport::TestCase

	 def setup

    @user = User.new(name: "Tom", surname: "ghighi", email: "test@example.fr")
  end

  test "should be valid" do
    assert_not @user.valid?
  end


 test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end

   test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end


  # test "the truth" do
  #   assert true
  # end
end
