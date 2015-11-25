require 'spec_helper'

describe "mircoposts/show" do
  before(:each) do
    @mircopost = assign(:mircopost, stub_model(Mircopost,
      :content => "MyText",
      :user => nil,
      :thumb => "Thumb",
      :followers => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(/Thumb/)
    rendered.should match(/1/)
  end
end
