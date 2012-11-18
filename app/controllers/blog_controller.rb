class BlogController < ActionController::Base
  def index
    @posts = Post.all(:order => "created_at DESC")
    @posts.each do |post|
      @comments = Post.all
    end
  end
end
