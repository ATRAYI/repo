class PostsController < ApplicationController
def new
	@post=Post.new
end
def create 
	user=User.find(params[:id])
	user.post.create(params[:user])
	redirect_to user_post_path
end

