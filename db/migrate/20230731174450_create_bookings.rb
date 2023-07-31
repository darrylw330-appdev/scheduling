class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :work_day, foreign_key: true
      t.references :work_time, foreign_key: true
      t.timestamps
    end
  end
end
