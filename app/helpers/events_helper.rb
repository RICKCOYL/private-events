module EventsHelper
    def attends? event_id
   current_user.attended_events.map(&:id).include? event_id
    end
end
