class CommentsController < ApplicationController
  def create
    comment = current_user.comment.build(comment_params)
    if comment.save
      redirect_to shop_path(comment.shop), success: t('defaults.flash_message.created', item: Comment.model_name.human)
    else
      redirect_to shop_path(comment.shop), danger: t('defaults.flash_message.not_created', item: Comment.model_name.human)
    end
  end

  # def destroy
  #   @comment = current_user.comments.find(params[:id])
  #   @comment.destroy!
  # end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(shop_id: params[:shop_id])
  end
end
