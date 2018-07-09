module GroupSessionsHelper
	# 渡されたユーザーでログインする
	def log_in_group(group)
    	session[:group_id] = group.id
 	end

 	# 現在ログイン中のユーザーを返す (いる場合)
	def current_group
		@current_group ||= Group.find_by(id: session[:group_id])
	end

	# ユーザーがログインしていればtrue、その他ならfalseを返す
	def logged_in_group?
	    !current_group.nil?
	end

	def log_out_group
		session.delete(:group_id)
    	@current_group = nil
	end
end
