require 'spec_helper'

describe "courses/new" do
  before(:each) do
    assign(:course, stub_model(Course,
      :name => "MyString",
      :instructor => "MyString",
      :description => "MyText",
      :units => "MyText",
      :duration => "MyString"
    ).as_new_record)
  end

  it "renders new course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", courses_path, "post" do
      assert_select "input#course_name[name=?]", "course[name]"
      assert_select "input#course_instructor[name=?]", "course[instructor]"
      assert_select "textarea#course_description[name=?]", "course[description]"
      assert_select "textarea#course_units[name=?]", "course[units]"
      assert_select "input#course_duration[name=?]", "course[duration]"
    end
  end
end
