class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :attendances, foreign_key: 'attended_events', class_name: 'Attendance'
    has_many :attendees, through: :attendances, source: 'attendee'
end
