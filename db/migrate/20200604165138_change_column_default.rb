class ChangeColumnDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :duration, :integer, :default => nil
  end
end
