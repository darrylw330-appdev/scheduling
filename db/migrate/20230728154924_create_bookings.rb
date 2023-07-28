class CreateBookings < ActiveRecord::Migration[7.0]
  def change
      create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :work_day, null: false, foreign_key: true
      t.references :work_time, null: false, foreign_key: true
      t.timestamps
    end
  end
end
