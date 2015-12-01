class TasksController < ApplicationController
	def new
		@task = Task.new
	end

	def create
		@task = Task.create task_params
		if @task.save
			@task.update_column(:user_id, current_user)
			@task.update_column(:finished, false)
			redirect_to current_user
		else
			render 'new'
		# 	flash[:error] = @user.errors.full_messages.to_sentence	
		# 	render 'new'
		end
	end

	def update
		@task = Task.find(params[:id])
		@task.update_column(:finished, true)
		redirect_to home_photo_path
	end

	def task_params
		params.require(:task).permit(:todo)
	end
end
