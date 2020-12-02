# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_201_202_125_556) do
  create_table 'attendances', force: :cascade do |t|
    t.integer 'attendee_id', null: false
    t.integer 'attended_events_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['attended_events_id'], name: 'index_attendances_on_attended_events_id'
    t.index ['attendee_id'], name: 'index_attendances_on_attendee_id'
  end

  create_table 'events', force: :cascade do |t|
    t.date 'date'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.integer 'creator_id'
    t.string 'description'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'attendances', 'events', column: 'attended_events_id'
  add_foreign_key 'attendances', 'users', column: 'attendee_id'
end
