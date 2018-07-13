class InterestingsController < ApplicationController
	def create
  	Interesting.create(user_id:current_user.id,group_id:params[:group_id])
  	redirect_to group_path(params[:group_id])
  end

  def destroy
  	Interesting.find(params[:id]).destroy
  	redirect_to group_path
  end
end