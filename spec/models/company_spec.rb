require 'rails_helper'

RSpec.describe Company, :type => :model do
  before(:each) { @company = Company.new(name: 'Test company') }

  subject { @company }

  it { should respond_to(:name) }

  it "#name returns a string" do
    expect(@company.name).to match 'Test company'
  end
end
