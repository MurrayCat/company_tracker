require 'rails_helper'

RSpec.describe "branches/new", :type => :view do
  before(:each) do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:user)
    @company = FactoryGirl.create(:company)

    assign(:branch, Branch.new(
      :name => "MyString",
      :location => "MyString",
      :company =>  @company
    ))
  end

  it "renders new branch form" do
    render
      assert_select "form[action=?][method=?]", branches_path, "post" do
      assert_select "input#branch_name[name=?]", "branch[name]"
      assert_select "input#branch_location[name=?]", "branch[location]"

    end
  end
end
