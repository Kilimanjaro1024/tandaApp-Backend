class CreateNewPropertyForOrg < ActiveRecord::Migration[6.1]
  def change
    create_table :new_property_for_orgs do |t|

      t.timestamps
    end
  end
end
