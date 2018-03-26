class VotesController < ApplicationController
  before_action :find_post
  before_action :authenticate_user!

  def create
    @vote=@post.votes.create(vote_params)
    @vote.user_id=current_user.id
    @vote.save
  end


  private
  def find_post
    @post=Post.find(params[:post_id])
  end

  def vote_params
    params.require(:vote).permit(:vote)
  end

end
