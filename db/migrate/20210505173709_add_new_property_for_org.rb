class AddNewPropertyForOrg < ActiveRecord::Migration[6.1]
  def change
    add_column :shifts, :org, :integer
  end
end
