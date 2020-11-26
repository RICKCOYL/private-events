class EventsController < ApplicationController
  def index
       @event = Event.all
  end
    def new
        @event = Event.new
       
    end

    def create
      @event = current_user.created_events.build(event_params)

        if @event.save
        redirect_to event_path(:id)
    
        else
          render :new
        end
    end

    def show
      @event = Event.find_by(params[:date ,:description])
    end

end
