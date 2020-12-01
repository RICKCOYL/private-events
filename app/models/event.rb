class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :attendances, foreign_key: 'attended_events_id', class_name: 'Attendance'
    has_many :attendees, :through => :attendances, :source => :attendee

    scope :upcoming_events, -> { where('date >= ?', Date.today) }
    scope :past_events, -> { where('date < ?', Date.today) }
end
