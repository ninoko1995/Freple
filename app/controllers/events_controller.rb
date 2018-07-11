class EventsController < ApplicationController
  before_action :set_event,only:[:show,:edit,:destory,:update]
  def new
    @event = Event.new
  end

  def create
    @event=Event.new(event_params)
    @event.group_id=current_group.id
    @event.accepted = true
    if @event.save
      redirect_to group_path(current_group)
    else
      render :new
    end
  end

  def edit
  end

  def show
    @users=@event.users
  end

  def destory
    @event.destory
    redirect_to group_path(current_group)
  end

  def update
  end

  def search
    low = params[:lowest_price]
    high = params[:highest_price]
    @events = Event.where(price: low..high).order("created_at DESC")
    @event_index='検索結果'
    render 'home/top'
  end

  private
    def set_event
      @event=Event.find(params[:id])
    end
    def event_params
      params.require(:event).permit(:name,:place,:description,:price,:start_time,:end_time,:dead_line,:accepted_number,:release)
    end
end
