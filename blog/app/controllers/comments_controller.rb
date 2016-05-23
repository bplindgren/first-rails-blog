class CommentsController < ApplicationController
  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @post = Post.find(params["comment"][:post_id])
    p params
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @post
    else
      render @post
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end

end
