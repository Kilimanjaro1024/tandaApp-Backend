class MakeShiftPropertiesRequired < ActiveRecord::Migration[6.1]
  def change
    change_column :orgshifts, :start, :datetime, null: false
    change_column :orgshifts, :end, :datetime, null: false
    change_column :orgshifts, :break_length, :integer, null: false
    change_column :orgshifts, :org, :integer, null: false
    change_column :orgshifts, :name, :string, null: false
  end
end
