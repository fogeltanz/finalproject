require 'spec_helper'

describe Tournament do
      before { @tournament = Tournament.new(name: "Test Tournament")}
  
  subject {@tournament}
  
  it{should respond_to(:name)}
  it{should respond_to(:team_id)}
end
  
