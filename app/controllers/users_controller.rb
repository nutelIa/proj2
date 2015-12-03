class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		# for friend in current_user.friends
		# 	if friend = @user
		# 		@not_following = true
		# 		return @not_following
		# if @user in current_user.friends
		# 	@not_following = true
		# @not_following = false
	end

	def index
		@users = User.all
	end
end