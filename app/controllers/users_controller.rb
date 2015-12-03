class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		begin
			current_user.friends.find(params[:id])
			@not_following = false
		rescue Exception
			@not_following = true
		end
	end

	def index
		@users = User.all
	end
end