class Branch < ActiveRecord::Base
  belongs_to :company
  validates_presence_of :company
end
