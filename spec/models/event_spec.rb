require 'rails_helper'

RSpec.describe Event, type: :model do
  before :each do
    @user = User.create(username: 'simon')
    @event1 = @user.created_events.create(date: '02.09.2030', description: 'Party')
   
   
  end

  
  context 'has associations and validations' do
    it 'can be created' do
      expect(Event.first).to eq(@event1)
    end

    it 'The creator of the event should be the current user' do
      expect(@event1.creator).to eq(@user)
    end
    it 'should not be valid if event:description is nil' do
      @event1.description = nil
      expect(@event1).to_not be_valid
    end
    it 'should not be valid if event:date is nil' do
      @event1.date = nil
      expect(@event1).to_not be_valid
    end

  end
end
