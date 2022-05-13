class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @topic_id = params[:topic_id]
    
  end
  
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    
  
    if @comment.save
      redirect_to topics_path, success: 'コメントの登録に成功しました'
    else
      flash.now[:danger] = "コメントの登録に失敗しました"
      render :new
    end
    
  end
  
  def comment_params
    params.require(:comment).permit(:comment, :topic_id)
  end
    
end
