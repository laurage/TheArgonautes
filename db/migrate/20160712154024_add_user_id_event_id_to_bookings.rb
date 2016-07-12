class AddUserIdEventIdToBookings < ActiveRecord::Migration
  def change
     add_column :bookings, :user_id, :integer
     add_column :bookings, :event_id, :integer
  end
end
