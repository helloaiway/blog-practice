require 'spec_helper'

describe "mircoposts/new" do
  before(:each) do
    assign(:mircopost, stub_model(Mircopost,
      :content => "MyText",
      :user => nil,
      :thumb => "MyString",
      :followers => 1
    ).as_new_record)
  end

  it "renders new mircopost form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mircoposts_path, "post" do
      assert_select "textarea#mircopost_content[name=?]", "mircopost[content]"
      assert_select "input#mircopost_user[name=?]", "mircopost[user]"
      assert_select "input#mircopost_thumb[name=?]", "mircopost[thumb]"
      assert_select "input#mircopost_followers[name=?]", "mircopost[followers]"
    end
  end
end
