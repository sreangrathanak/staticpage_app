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
  	assert_difference 'User.count',1 do
  		post users_path, user:{ name:name, 
  								email:email,
  								password:password,
  								password_confirmation:password}
  	end
  	assert_template 'users/new'
    #assert_template 'users/show'
    assert is_logged_in?
  end
end
