require_relative 'spec_helper'
require_relative 'pages/login'

describe 'Login' do
  before(:each) do
    @login = Login.new(@driver)
  end

  it 'Example 1: Successfully logged in' do
    @login.with('tomsmith', 'SuperSecretPassword!')
    expect(@login.success_message_present?).to eql true
  end

  it 'Example 2: Failed attempt to log in' do
    @login.with('asdf', 'asdf')
    expect(@login.failure_message_present?).to eql true
  end
end
