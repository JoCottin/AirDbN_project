class AddDjToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :dj, :boolean, default: false
  end
end
