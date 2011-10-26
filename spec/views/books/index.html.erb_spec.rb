require 'spec_helper'

describe "books/index.html.erb" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :title => "Title",
        :price => 1.5,
        :subject_id => 1,
        :description => "MyText",
        :email => "Email"
      ),
      stub_model(Book,
        :title => "Title",
        :price => 1.5,
        :subject_id => 1,
        :description => "MyText",
        :email => "Email"
      )
    ])
  end

  it "renders a list of books" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
