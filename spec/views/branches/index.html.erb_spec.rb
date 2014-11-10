require 'rails_helper'

RSpec.describe "branches/index", :type => :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "Test Company",
    ))
    assign(:branches, [
      Branch.create!(
        :name => "Name",
        :location => "Location",
        :company => @company 
      ),
      Branch.create!(
        :name => "Name",
        :location => "Location",
        :company => @company 
      )
    ])
  end

  it "renders a list of branches" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Test Company".to_s, :count => 2

  end
end
