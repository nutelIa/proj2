class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		# @friendships = Friendship.find(params[:id])
	end

	def index
		@users = User.all
	end
end