class EventsController < ApplicationController

  def index
    @events = []
    if params[:name]
      @events = Event.where("name like ?", "%#{params[:name]}%")
    elsif params[:categories]
      params[:categories].each do |category_id|
        category = Category.find_by(id: category_id.to_i)
        Event.all.each do |event|
          @events << event if event.categories.include?(category)
        end
      end
      @events.uniq!
    else
      Event.all.each do |event|
        @events << event
      end
    end
  @events.delete_if {|event| !event.active }
  end

  def show
    @event = Event.find_by(id: params[:id])
    @rsvp = Rsvp.find_by(event_id: @event.id, member_id: current_member.id)
  end

  def rsvp
    @event = Event.find_by(id: params[:id])
    @member = current_member
    if @event.active
      Rsvp.find_or_create_by(member_id: @member.id, event_id: @event.id)
      flash[:alert] = "RSVP successful. Event has been added to your calendar"
      redirect_to @event
    else
      flash[:alert] = "There was an error RSVPing - The Event is no longer active"
      render '/events/show'
    end

  end

  def destroy_rsvp
    @event = Event.find_by(id: params[:event_id])
    @rsvp = Rsvp.find_by(id: params[:id])
    @rsvp.destroy
    flash[:alert] = "You have successfully cancelled"
    redirect_to event_path(@event)
  end

end
