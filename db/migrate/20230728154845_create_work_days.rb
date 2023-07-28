class CreateWorkDays < ActiveRecord::Migration[7.0]
  def change
      create_table :work_days do |t|
      t.string :day_name
      t.timestamps
      add_index :work_days, :day_name
    end
  end
end
