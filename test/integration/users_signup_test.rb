class UserSignupTest < ActionDispatch::IntegrationTest

	test "User create" do 
		get signup_path
		assert_no_difference 'User.count' do
			post users_path, user:{ name: '',
									email: 'user@invalid',
									password: "foo",
									password_confirmation: "bar"}
		end
		assert_template 'users/signup'

	end
end