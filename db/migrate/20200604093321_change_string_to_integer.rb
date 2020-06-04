class ChangeStringToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :start_date, :integer, using: 'start_date::integer'
    change_column :bookings, :end_date, :integer, using: 'end_date::integer'
  end
end
