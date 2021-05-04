class MakeOrgIdNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :organisation_id, :bigint, null: false
  end
end
