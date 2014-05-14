require 'spec_helper'

describe Game do
  before { @game = Game.new(gametime: DateTime.new(2014, 5, 13, 12, 12, 12))}
  
  subject {@game}
  
  it{should respond_to(:gametime)}
  it{should respond_to(:tournament_id)}
end
