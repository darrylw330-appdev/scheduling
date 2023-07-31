class CreateWorkDays < ActiveRecord::Migration[7.0]
  def change
    create_table :work_days do |t|
      t.string :day_of_week
      t.timestamps
    end
  end
end
