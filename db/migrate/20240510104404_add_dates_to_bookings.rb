class AddDatesToBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :date
    add_column :bookings, :start_date, :datetime
    add_column :bookings, :end_date, :datetime
  end
end
