class GroupSessionsController < ApplicationController
  	def new
  	end

 	def create
  		group = Group.find_by(email: params[:session][:email].downcase)
    	if group && group.authenticate(params[:session][:password])
      		log_in_group group
      		redirect_to group
    	else
      		flash.now[:danger] = 'Invalid email/password combination'
      		render 'new'
    	end
  	end

  	def destroy
  		log_out_group
  		redirect_to root_url
  	end
end
