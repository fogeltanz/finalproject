require 'spec_helper'

describe Team do
    before { @team = Team.new(name: "Test Team")}
  
  subject {@team}
  
  it{should respond_to(:name)}
  it{should respond_to(:user_id)}
  it{should respond_to(:tournament_id)}
end
