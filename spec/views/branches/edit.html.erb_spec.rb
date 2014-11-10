require 'rails_helper'

RSpec.describe "branches/edit", :type => :view do
  before(:each) do
    @branch = assign(:branch, Branch.create!(
      :name => "MyString",
      :location => "MyString",
      :company => nil
    ))
  end

  it "renders the edit branch form" do
    render

    assert_select "form[action=?][method=?]", branch_path(@branch), "post" do

      assert_select "input#branch_name[name=?]", "branch[name]"

      assert_select "input#branch_location[name=?]", "branch[location]"

      assert_select "input#branch_company_id[name=?]", "branch[company_id]"
    end
  end
end
