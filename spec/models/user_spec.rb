require 'spec_helper'

describe User do
  def new_user(attributes = {})
    attributes[:email] ||= 'test@mail.com'
    attributes[:password] ||= '111111'
    attributes[:password_confirmation] ||= '111111'
    User.new(attributes)
  end

  it "should be valid" do
    new_user.should be_valid
  end

  it "should require email" do
    new_user(:email => '').should have(1).error_on(:email)
  end
end
