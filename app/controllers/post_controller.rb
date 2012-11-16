class PostController < ActionController::Base
  http_basic_authenticate_with :name => "username", :password =>"password"
  def index
    
  end
  
  def new
    @post = Post.new
  end
  
  def create
    new_post = params[:post].merge(:description =>params[:text_content])
    @p = Post.create(new_post);

    if @p.save
      redirect_to '/blog'
    else
      redirect_to '/blog'
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = "Post successfully updated."
    post_update = params[:post].merge(:description =>params[:text_content])
    Post.update(params[:id], post_update)
    redirect_to '/blog'
  end
  
  def destroy
    Post.delete(params[:id])
    redirect_to '/blog'
  end
end
