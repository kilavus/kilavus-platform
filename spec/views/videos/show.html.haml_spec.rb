require 'spec_helper'

describe "videos/show" do
  before(:each) do
    @video = assign(:video, stub_model(Video,
      :vimeoid => "Vimeoid",
      :title => "Title",
      :description => "MyText",
      :duration => "Duration",
      :visualization => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Vimeoid/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Duration/)
    rendered.should match(/MyText/)
  end
end
