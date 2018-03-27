class VotesController < ApplicationController
  before_action :find_post
  before_action :find_vote , only: [:update,:delete]
  before_action :authenticate_user!

  def create
    @vote=@post.votes.create(vote_params.merge(user: current_user))
    @vote.save
    redirect_to posts_path, success: 'Voted'
  end

  def update
    @vote.update(vote_params)
    redirect_to posts_path, succes:'Vote changed'
  end

  def delete
    @vote.destroy
    redirect_to posts_path, succes:'Vote deleted'
  end


  private
  def find_post
    @post=Post.find(params[:post_id])
  end

  def find_vote
    @vote=Vote.find(params[:id])
  end

  def vote_params
    params.require(:vote).permit(:vote)
  end

end
