require 'spec_helper'

describe "citations/index" do
  before(:each) do
    assign(:citations, [
      stub_model(Citation,
        :author => "Author",
        :year => "Year",
        :title => "",
        :volume => 1,
        :pages => "Pages",
        :abstract => "Abstract"
      ),
      stub_model(Citation,
        :author => "Author",
        :year => "Year",
        :title => "",
        :volume => 1,
        :pages => "Pages",
        :abstract => "Abstract"
      )
    ])
  end

  it "renders a list of citations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pages".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Abstract".to_s, :count => 2
  end
end
