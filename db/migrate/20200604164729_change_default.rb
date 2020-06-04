class ChangeDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :duration, :integer
  end
end
