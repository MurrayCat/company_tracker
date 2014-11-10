class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  before_filter :authenticate_user!, :except =>[:show,:index]

def index
    @companies = Company.all
    respond_with(@companies)
  end

  def show
    @branches = Branch.all
    respond_with(@company)
  end

  def new
    @company = Company.new
    respond_with(@company)
  end

  def edit
  end

  def create
    @company = Company.new(company_params)
    @company.save
    respond_with(@company)
  end

  def update
    @company.update(company_params)
    respond_with(@company)
  end

  def destroy
    @branches = Branch.all
    @branches.each do |branch|
      if branch.company_id ==@company.id
    branch.destroy
      end
    end
    @company.destroy
    respond_with(@company)
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:name, :description)
    end
end
