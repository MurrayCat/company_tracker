require 'rails_helper'

RSpec.describe Branch, :type => :model do
  before(:each) { @branch = Company.new(name: 'Test branch') }

  subject { @branch }

  it { should respond_to(:name) }

  it "#name returns a string" do
    expect(@branch.name).to match 'Test branch'
  end
 

end