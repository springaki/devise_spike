module ValidUserRequestHelper
  # for use in request specs
  def sign_in_as_a_valid_user
    @user ||= FactoryGirl.create :user
    post_via_redirect user_session_path, 'user[email]' => @user.email, 'user[password]' => @user.password
  end
end

RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
  config.include ValidUserRequestHelper, :type => :request
end
