class FollowsController < ApplicationController
	def create
		@follower = User.find(params[:user_id])
		@follow = @follower.follows.build(:following_id => params[:follow_id])
		if @follow.save
			flash[:notice] = "Followed user."
			redirect_to @follower
		else
			flash[:error] = "Could not follow user."
			redirect_to root_url			
		end
	end
	def destroy
		
	end
end