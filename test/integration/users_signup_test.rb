require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid signup information" do
  	get signup_path
  	name="Sreang Rathanak"
  	email="jame@yahoo.com"
  	password="password"
  	assert_no_difference 'User.count',1 do
  		post users_path, user:{ name:"", 
  								email:"user@invalid",
  								password:"foo",
  								password_confirmation:"bar"}
  	end
  	assert_template 'users/new'
  end
end
