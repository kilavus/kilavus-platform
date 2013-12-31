require 'spec_helper'

describe "courses/show" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :name => "Name",
      :instructor => "Instructor",
      :description => "MyText",
      :units => "MyText",
      :duration => "Duration"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Instructor/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Duration/)
  end
end
