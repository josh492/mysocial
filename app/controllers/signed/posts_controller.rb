class Signed::PostsController < Signed::BaseController
	def index
		@posts = Post.all.reverse
		@post = Post.new

	end
	def create
    @new_post = current_user.posts.create(post_params)
    @post = Post.new
    
    
  end
  def post_params
    params.require(:post).permit(:context)
  end
end

