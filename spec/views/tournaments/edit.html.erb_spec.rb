require 'spec_helper'

describe "tournaments/edit" do
  before(:each) do
    @tournament = assign(:tournament, stub_model(Tournament,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit tournament form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tournament_path(@tournament), "post" do
      assert_select "input#tournament_name[name=?]", "tournament[name]"
      assert_select "textarea#tournament_description[name=?]", "tournament[description]"
    end
  end
end
