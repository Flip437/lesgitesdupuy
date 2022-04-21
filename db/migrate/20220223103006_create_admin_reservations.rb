class CreateAdminReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_reservations do |t|
      t.belongs_to :bedroom
      t.date :start_date
      t.date :end_date
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps
    end
  end
end
