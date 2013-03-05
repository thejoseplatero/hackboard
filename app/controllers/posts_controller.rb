class PostsController < ApplicationController
#rails generate controller Posts (This is what created it in the console)

def index
@posts  = Post.all
end


end
