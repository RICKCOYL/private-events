require 'rails_helper'

RSpec.describe Attendance, type: :model do
  before :each do
    @user = User.create(username: 'john')
    @event = @user.created_events.create(date: '02.09.2022', description: 'Birthday')
    @event_attendee1 = @user.attendances.create(attended_events_id: @event.id)
    @event_attendee2 = @event.attendances.create(attendee_id: @user.id)
  end
  it 'Checks if event is attended' do
  expect(Attendance.first).to eq(@event_attendee1)
end
it 'Checks if user can attend an event' do
  expect(Attendance.second).to eq(@event_attendee2)
end
end