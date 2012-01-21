require 'spec_helper'

describe "actors/index" do
  before(:each) do
    assign(:actors, [
      stub_model(Actor,
        :name => "Name",
        :pic => "Pic"
      ),
      stub_model(Actor,
        :name => "Name",
        :pic => "Pic"
      )
    ])
  end

  it "renders a list of actors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pic".to_s, :count => 2
  end
end
