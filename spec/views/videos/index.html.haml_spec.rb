require 'spec_helper'

describe "videos/index" do
  before(:each) do
    assign(:videos, [
      stub_model(Video,
        :vimeoid => "Vimeoid",
        :title => "Title",
        :description => "MyText",
        :duration => "Duration",
        :visualization => "MyText"
      ),
      stub_model(Video,
        :vimeoid => "Vimeoid",
        :title => "Title",
        :description => "MyText",
        :duration => "Duration",
        :visualization => "MyText"
      )
    ])
  end

  it "renders a list of videos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Vimeoid".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
