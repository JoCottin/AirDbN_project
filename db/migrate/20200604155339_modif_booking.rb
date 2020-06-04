class ModifBooking < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :end_date
    add_column :bookings, :duration, :integer
    change_column :bookings, :start_date, :string
  end
end
