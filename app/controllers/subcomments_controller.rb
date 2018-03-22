class SubcommentsController < ApplicationController
before_action :find_comment, :find_post
before_action :authenticate_user!


  def create
    @subcomment=@comment.subcomments.create(subcomment_params)
    @subcomment.user_id=current_user.id
    @subcomment.save
    redirect_to post_comment_path(@post,@comment)
  end

  def destroy
    @subcomment=Subcomment.find(params[:id])
    @subcomment.destroy
    redirect_to post_comment_path(@post, @comment) , notice: 'Deleted'
  end

  private
  def subcomment_params
    params.require(:subcomment).permit(:content)
  end

  def find_comment
    @comment=Comment.find(params[:comment_id])
  end
  def find_post
    @post=Post.find(params[:post_id])
  end
end
