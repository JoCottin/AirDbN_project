class AddDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :duration, :integer, default: 0
  end
end
