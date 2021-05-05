class AddOrgIdToShifts < ActiveRecord::Migration[6.1]
  def change
    add_column :shifts, :org_id, :bigInt
  end
end
