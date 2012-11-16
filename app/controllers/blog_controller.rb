class BlogController < ActionController::Base
  def index
    @posts = Post.all(:order => "created_at DESC")
  end
end
