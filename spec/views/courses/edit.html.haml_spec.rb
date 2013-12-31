require 'spec_helper'

describe "courses/edit" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :name => "MyString",
      :instructor => "MyString",
      :description => "MyText",
      :units => "MyText",
      :duration => "MyString"
    ))
  end

  it "renders the edit course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", course_path(@course), "post" do
      assert_select "input#course_name[name=?]", "course[name]"
      assert_select "input#course_instructor[name=?]", "course[instructor]"
      assert_select "textarea#course_description[name=?]", "course[description]"
      assert_select "textarea#course_units[name=?]", "course[units]"
      assert_select "input#course_duration[name=?]", "course[duration]"
    end
  end
end
