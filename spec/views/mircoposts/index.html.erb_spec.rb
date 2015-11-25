require 'spec_helper'

describe "mircoposts/index" do
  before(:each) do
    assign(:mircoposts, [
      stub_model(Mircopost,
        :content => "MyText",
        :user => nil,
        :thumb => "Thumb",
        :followers => 1
      ),
      stub_model(Mircopost,
        :content => "MyText",
        :user => nil,
        :thumb => "Thumb",
        :followers => 1
      )
    ])
  end

  it "renders a list of mircoposts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Thumb".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
