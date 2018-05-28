class CreateReservableSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :reservable_schedules do |t|
      t.integer :fp_id
      t.time :starting_time
      t.time :ending_time
      t.date :date

      t.timestamps
    end
  end
end
