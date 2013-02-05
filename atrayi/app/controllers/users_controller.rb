class UsersController < ApplicationController
def index
	@users=User.all
end
def show
	@user=User.find(params[:id])
end
def create
	@user=User.create(params[:user])
	if @user.save
		Usermailer.welcome_email(@user).deliver
		#:notice => 'User was successfully created.'
	else
		render :action=>'create'
	end
	redirect_to users_path 
end
def new
	@user=User.new	
end
def destroy
	user=User.find(params[:id])
	user.destroy
	redirect_to users_path
end
def edit
	@user=User.find(params[:id])
end
def update
	user=User.find(params[:id])
	user.update_attributes(params[:user])
	if user.save!
		redirect_to users_path
	else
		render :action=>'edit'
	end
end
end
