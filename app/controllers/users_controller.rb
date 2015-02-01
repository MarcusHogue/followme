class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@users = User.all
	end

	def create
		if params[:user]
			@user = User.new(params.require(:user).permit(:name))
			if @user.save
		 		flash[:notice] = "Created user."
		 		redirect_to root_url
			 else
				flash[:error] = "Could not create user."
			 	redirect_to root_url
			 end
		end
	end

end

