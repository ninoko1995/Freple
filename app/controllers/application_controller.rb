class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	include UserSessionsHelper
	include GroupSessionsHelper
	

	# before_filter :set_request_from
	
	# # どこのページからリクエストが来たか保存しておく
	# def set_request_from
	# 	if session[:request_from]
	#     	@request_from = session[:request_from]
	#     end
	#     # 現在のURLを保存しておく
	#     session[:request_from] = request.original_url
	# end

	# # 前の画面に戻る
	# def return_back
	# 	if request.referer
	#     	redirect_to :back and return true
	#     elsif @request_from
	#     	redirect_to @request_from and return true
	#     end
	# end

	def check_logged_in_user?
		if !logged_in_user?
	      redirct_back(fall_back_location: root_path,notice: "ログインしてください")
		end
  	end
  
  	def check_logged_in_group?
    	if !logged_in_group?
      	redirct_back(fall_back_location: root_path,notice: "ログインしてください")
    	end
  	end

  	def correct_group?(group)
    	if !(logged_in_group? && current_group.id==group.id)
      		redirct_back(fall_back_location: root_path,notice: "ログインしてください")
  		end
  	end
end
