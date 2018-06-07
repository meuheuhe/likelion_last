class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:destroy]
  before_action :is_owner?, only: [:destroy]
  
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to memo_path(params[:memo_id])
  end
  
  def destroy
    @comment.destroy
    redirect_to :back
  end
  
  private
  def set_comment
    @comment = Comment.find(params[:id])
  end
  
  def comment_params
    params.require(:comment).permit(:content, :user_id, :memo_id)
  end
  
  def is_owner?
    redirect_to root_path unless current_user == @comment.user
  end
end
