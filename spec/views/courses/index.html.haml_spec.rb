require 'spec_helper'

describe "courses/index" do
  before(:each) do
    assign(:courses, [
      stub_model(Course,
        :name => "Name",
        :instructor => "Instructor",
        :description => "MyText",
        :units => "MyText",
        :duration => "Duration"
      ),
      stub_model(Course,
        :name => "Name",
        :instructor => "Instructor",
        :description => "MyText",
        :units => "MyText",
        :duration => "Duration"
      )
    ])
  end

  it "renders a list of courses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Instructor".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
  end
end
