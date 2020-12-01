class EventsController < ApplicationController
  before_action :require_login, only:[:create, :show]

  def index
       @event = Event.all
       @attendance = Attendance.new
  end
    def new
        @event = Event.new
       
    end

    def create
      @event = current_user.created_events.build(event_params)

        if @event.save
        redirect_to event_path(@event)
    
        else
          render :new
        end
    end


    def show
      @event = Event.find(params[:id])
    end
    def create_attendance
      #raise params[:event_id]
      @attendance = current_user.attendances.find_or_initialize_by(attendance_params)

      if @attendance.save
      redirect_to root_path
  
      else
        render :new
      end

    end
   
end
