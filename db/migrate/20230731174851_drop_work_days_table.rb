class DropWorkDaysTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :work_days, if_exists: true
  end
end
