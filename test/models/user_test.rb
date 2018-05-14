require 'test_helper'

class UserTest < ActiveSupport::TestCase

	 def setup

    @user = User.new(name: "Tom", surname: "ghighi", email: "test@example.fr")
  end

  test "user should be valid" do
    assert_not @user.valid?
  end


 test "name should be present" do
    @user.name = "Lola"
    assert_not @user.valid?
  end

   test "email should be present" do
    @user.email = "bla@bla.com"
    assert_not @user.valid?
  end


  # test "the truth" do
  #   assert true
  # end

end
