require 'spec_helper'

describe "videos/new" do
  before(:each) do
    assign(:video, stub_model(Video,
      :vimeoid => "MyString",
      :title => "MyString",
      :description => "MyText",
      :duration => "MyString",
      :visualization => "MyText"
    ).as_new_record)
  end

  it "renders new video form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", videos_path, "post" do
      assert_select "input#video_vimeoid[name=?]", "video[vimeoid]"
      assert_select "input#video_title[name=?]", "video[title]"
      assert_select "textarea#video_description[name=?]", "video[description]"
      assert_select "input#video_duration[name=?]", "video[duration]"
      assert_select "textarea#video_visualization[name=?]", "video[visualization]"
    end
  end
end
