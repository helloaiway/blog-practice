require 'spec_helper'

describe "messages/new" do
  before(:each) do
    assign(:message, stub_model(Message,
      :name => "MyString",
      :user => 1,
      :thumb => "MyString",
      :content => "MyText",
      :follows => 1
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", messages_path, "post" do
      assert_select "input#message_name[name=?]", "message[name]"
      assert_select "input#message_user[name=?]", "message[user]"
      assert_select "input#message_thumb[name=?]", "message[thumb]"
      assert_select "textarea#message_content[name=?]", "message[content]"
      assert_select "input#message_follows[name=?]", "message[follows]"
    end
  end
end
