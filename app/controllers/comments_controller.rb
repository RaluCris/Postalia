class CommentsController < ApplicationController
  before_action :find_post
  before_action :find_comment, only: [:destroy]
  def index
    @comments=Comment.all
  end
  def create
    @comment=@post.comments.create(comment_params)
    @comment.user_id=current_user.id
    @comment.save
    if @comment.save
      redirect_to post_path(@post)
    end
  end
  def show
    @comment=Comment.find(params[:id])
    @subcomments=Subcomment.where(comment_id: @comment).order("created_at DESC")
  end

  def destroy
    @comment.destroy
    redirect_to post_path(@post), notice:'Comment deleted'
  end

  private
  def find_post
    @post=Post.find(params[:post_id])
  end

  def find_comment
    @comment=@post.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
