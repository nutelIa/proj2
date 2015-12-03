class FriendshipsController < ApplicationController
    def friend
      @f = Friendship.new
      @f.user_a = current_user
      @f.user_b = User.find(params[:id])
      if @f.save
        flash[:notice] = "You're now friends."
        redirect_to (:back)
      else
        flash[:error] = "Error. Refresh and try again."
        redirect_to (:back)
      end
    end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.delete
    redirect_to current_user
  end
end