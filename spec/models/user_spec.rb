require 'spec_helper'

describe User do
  before { @user = User.new(name: "Test User", email: "test@test.com", nickname: "testnick")}
  
  subject {@user}
  
  it{should respond_to(:name)}
  it{should respond_to(:email)}
  it{should respond_to(:nickname)}
  it{should respond_to(:team_id)}
  it{should respond_to(:tournament_id)}
end
