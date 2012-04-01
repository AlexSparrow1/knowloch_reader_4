require 'spec_helper'

describe "citations/show" do
  before(:each) do
    @citation = assign(:citation, stub_model(Citation,
      :author => "Author",
      :year => "Year",
      :title => "",
      :volume => 1,
      :pages => "Pages",
      :abstract => "Abstract"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Author/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Year/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pages/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Abstract/)
  end
end
