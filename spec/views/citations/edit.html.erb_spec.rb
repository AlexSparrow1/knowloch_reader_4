require 'spec_helper'

describe "citations/edit" do
  before(:each) do
    @citation = assign(:citation, stub_model(Citation,
      :author => "MyString",
      :year => "MyString",
      :title => "",
      :volume => 1,
      :pages => "MyString",
      :abstract => "MyString"
    ))
  end

  it "renders the edit citation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => citations_path(@citation), :method => "post" do
      assert_select "input#citation_author", :name => "citation[author]"
      assert_select "input#citation_year", :name => "citation[year]"
      assert_select "input#citation_title", :name => "citation[title]"
      assert_select "input#citation_volume", :name => "citation[volume]"
      assert_select "input#citation_pages", :name => "citation[pages]"
      assert_select "input#citation_abstract", :name => "citation[abstract]"
    end
  end
end
