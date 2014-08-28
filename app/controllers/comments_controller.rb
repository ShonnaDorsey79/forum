class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # POST /comments
  # POST /comments.json
  def create
    @discussion = Discussion.find(params[:discussion_id])
    comment = @discussion.comments.new(comment_params)
    comment.user = current_user
    comment.save
    CommentMailer.new_comment(comment).deliver
    redirect_to @discussion

      end



  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @comment.discussion
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:body, :user_id)
    end
end
