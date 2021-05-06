class RemoveUnnecessaryTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :shifts
    drop_table :newshifts
    drop_table :new_property_for_orgs
  end
end
