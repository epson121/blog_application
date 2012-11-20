class PostController < ActionController::Base
 
  def index
    @post = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
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
    @p = "Post successfully updated."
    post_update = params[:post].merge(:description =>params[:text_content])
    @post = Post.update(params[:id], post_update)
    redirect_to blog_post_path(@post)
  end
  
  def destroy
    Post.delete(params[:id])
    redirect_to '/blog'
  end
  
  def add_comment
    @comment = Comment.create(params[:id])
  end
end
