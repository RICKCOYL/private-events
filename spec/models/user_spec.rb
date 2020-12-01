require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(username: "simon")
    @event1 = @user.created_events.create(date: '02.09.2030', description: 'Party')
    @event2 = @user.created_events.create(date: '02.09.2020', description: 'Pijamas')
   
  end

  
  context 'has associations and validations' do
    it 'can be created' do
      expect(User.first).to eq(@user)
    end

    it 'username should be present' do
      assert @user.valid?
    end
  end
end
