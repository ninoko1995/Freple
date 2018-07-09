module UserSessionsHelper
	# 渡されたユーザーでログインする
	def log_in_user(user)
    	session[:user_id] = user.id
 	end

 	# 現在ログイン中のユーザーを返す (いる場合)
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	# ユーザーがログインしていればtrue、その他ならfalseを返す
	def logged_in_user?
	    !current_user.nil?
	end

	def log_out_user
		session.delete(:user_id)
    	@current_user = nil
	end
end
