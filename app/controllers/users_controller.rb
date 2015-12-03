class UsersController < ApplicationController
	def show
		@user = User.friendly.find(params[:id])
		begin
			current_user.friends.friendly.find(params[:id])
			@not_following = false
		rescue Exception
			@not_following = true
		end
	end

	def index
		@users = User.all
	end
end