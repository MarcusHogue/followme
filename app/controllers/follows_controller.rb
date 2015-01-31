class FollowsController < ApplicationController
	def create
		@follow = current_user.follows.build(:follow_id => params[:follow_id])
		if @follow.save
			flash[:notice] = "Followed user."
			redirect_to root_url
		else
			flash[:error] = "Could not follow user."
			redirect_to root_url			
		end
	end
	def destroy
		
	end
end