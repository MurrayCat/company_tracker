require 'rails_helper'

RSpec.describe "branches/new", :type => :view do
  before(:each) do
    assign(:branch, Branch.new(
      :name => "MyString",
      :location => "MyString",
      :company => nil
    ))
  end

  it "renders new branch form" do
    render

    assert_select "form[action=?][method=?]", branches_path, "post" do

      assert_select "input#branch_name[name=?]", "branch[name]"

      assert_select "input#branch_location[name=?]", "branch[location]"

      assert_select "input#branch_company_id[name=?]", "branch[company_id]"
    end
  end
end
