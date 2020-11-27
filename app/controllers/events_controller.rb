class EventsController < ApplicationController
  before_action :require_login, only:[:create, :show]

  def index
       @event = Event.all
  end
    def new
        @event = Event.new
       
    end

    def create
      @event = current_user.created_events.build(event_params)

        if @event.save
        redirect_to new_user_path
    
        else
          render :new
        end
    end

    def show
      @event = Event.find_by(params[:date ,:description])
    end
   
end
