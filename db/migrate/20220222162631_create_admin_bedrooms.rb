class CreateAdminBedrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_bedrooms do |t|
      t.belongs_to :cottage
      t.string :name

      t.timestamps
    end
  end
end
