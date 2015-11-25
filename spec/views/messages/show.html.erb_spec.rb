require 'spec_helper'

describe "messages/show" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :name => "Name",
      :user => 1,
      :thumb => "Thumb",
      :content => "MyText",
      :follows => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Thumb/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
  end
end
