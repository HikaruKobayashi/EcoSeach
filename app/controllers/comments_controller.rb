class CommentsController < ApplicationController
  before_action :logged_in_user
  def create
    post = School.find(params[:school_id])
    @comment = post.comments.build(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      flash[:success] = "コメントしました。"
      redirect_back(fallback_location: schools_path)
    else
      flash[:success] = "コメントできませんでした。"
      redirect_back(fallback_location: schools_path)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end