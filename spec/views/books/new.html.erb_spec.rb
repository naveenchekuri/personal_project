require 'spec_helper'

describe "books/new.html.erb" do
  before(:each) do
    assign(:book, stub_model(Book,
      :title => "MyString",
      :price => 1.5,
      :subject_id => 1,
      :description => "MyText",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => books_path, :method => "post" do
      assert_select "input#book_title", :name => "book[title]"
      assert_select "input#book_price", :name => "book[price]"
      assert_select "input#book_subject_id", :name => "book[subject_id]"
      assert_select "textarea#book_description", :name => "book[description]"
      assert_select "input#book_email", :name => "book[email]"
    end
  end
end
