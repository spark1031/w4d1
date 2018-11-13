class CommentsController < ApplicationController
  
  def index
    if params[:user_id]
      comment = Comment
                  .left_outer_joins(:user)
                  .where("comments.user_id = #{params[:user_id]}")
                  .distinct
      render json: comment
    elsif params[:artwork_id]
      comment = Comment
                  .left_outer_joins(:artwork)
                  .where("comments.artwork_id = #{params[:artwork_id]}")
                  .distinct
      render json: comment
    end
  end
  
  def create
    
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment
    else
      render json: comment.errors.full_messages, status: 422
    end
  end
  
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    render json: comment
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:artwork_id, :user_id)
  end
  
  
end