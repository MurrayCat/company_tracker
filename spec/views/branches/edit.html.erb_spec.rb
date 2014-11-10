require 'rails_helper'
RSpec.describe "branches/edit", :type => :view do

  before(:each) do
    @request.env["devise.mapping"] = Devise.mappings[:user]
      sign_in FactoryGirl.create(:user)
    @company = FactoryGirl.create(:company)
    @branch = assign(:branch, Branch.create!(
      :name => "Test Branch",
      :location => "Test Location",
      :company => @company
    ))
  end


end
