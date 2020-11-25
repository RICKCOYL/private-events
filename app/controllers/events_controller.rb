class EventsController < ApplicationController
    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)
        if @event.save
        redirect_to event_path(:id)
    
        else
          render :new
        end
    end

    def show
      @event = Event.find_by(params[:date])
    end

end
