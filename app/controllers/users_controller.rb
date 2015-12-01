class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@task = Task.all
	end
end