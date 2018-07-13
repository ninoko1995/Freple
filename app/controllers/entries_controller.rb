class EntriesController < ApplicationController
  berore_action :check_logged_in_user?,only:[:create,:destroy]
  berore_action :check_logged_in_group?,only:[:action]
  
  def create
  	Entry.create(user_id:current_user.id,event_id:params[:event_id])
  	redirect_to event_path(params[:event_id])
  end

  def accept
  	@entry = Entry.find(params[:id])
  	@entry.update(accepted: true)
  	redirect_to event_path(@entry.event)
  end

  def destroy
  	Entry.find(params[:id]).destroy
  	redirect_to event_path
  end
end
