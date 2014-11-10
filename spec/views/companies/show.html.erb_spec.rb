require 'rails_helper'

RSpec.describe "companies/show", :type => :view do
  before(:each) do
    @company = FactoryGirl.create(:company)
    @branches = Branch.all
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Test Company/)
  end
end
