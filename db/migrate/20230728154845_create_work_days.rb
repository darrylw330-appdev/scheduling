class CreateWorkDays < ActiveRecord::Migration[7.0]
  def change
    create_table :work_days do |t|
      t.string :day_name
      t.timestamps
    end

    # Add a condition to create the index if it doesn't exist
    unless index_exists?(:work_days, :day_name)
      add_index :work_days, :day_name
    end
  end
end
