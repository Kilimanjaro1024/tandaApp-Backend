class ChangeOrgIdToNull < ActiveRecord::Migration[6.1]
  def change
    change_column :shifts, :org_id, :bigInt, null: true
  end
end
