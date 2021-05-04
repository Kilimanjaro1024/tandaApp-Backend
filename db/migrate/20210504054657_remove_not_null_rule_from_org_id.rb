class RemoveNotNullRuleFromOrgId < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :organisation_id, :bigint, null: true
  end
end
