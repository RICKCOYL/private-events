class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.references :attendee, null: false
      t.references :attended_events, null: false

      t.timestamps
    end
  end
end
