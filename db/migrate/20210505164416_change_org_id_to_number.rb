class ChangeOrgIdToNumber < ActiveRecord::Migration[6.1]
  def change
    change_column :shifts, :org_id, :int
  end
end
