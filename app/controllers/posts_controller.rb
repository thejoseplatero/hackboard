class PostsController < ApplicationController
#rails generate controller Posts (This is what created it in the console)

def index
@posts  = Post.includes(:comments).all
end

def new

@post = Post.new

end

def create
		@post = Post.new(params[:post])
		if @post.save
			redirect_to posts_path
		else 
			render :new
		end
	end

end
