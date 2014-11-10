require 'rails_helper'

RSpec.describe "branches/show", :type => :view do
  before(:each) do
    @company = FactoryGirl.create(:company);
    @branch = assign(:branch, Branch.create!(
      :name => "Name",
      :location => "Location",
      :company => @company
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
  end
end
