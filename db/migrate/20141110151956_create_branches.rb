class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :location
      t.belongs_to :company, index: true

      t.timestamps
    end
  end
end
