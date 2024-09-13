class CommentsController < ApplicationController
  def create
    # @comment = current_user.comments.build(comment_params)
    # @comment.save
    @shop = Shop.find(params[:shop_id])  # 投稿先の店舗を見つける
    @comment = @shop.comments.new(comment_params)  # 新しいコメントを店舗に関連付ける

    if @comment.save
      redirect_to @shop, notice: 'コメントが投稿されました！'
    else
      render 'shops/show'  # エラー時は店舗の詳細ページを再表示
    end
  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment.destroy!
  end

  private

  def comment_params
    # params.require(:comment).permit(:content).merge(user_id: params[:shop_id])
    params.require(:comment).permit(:content, :hot_rank).merge(user_id: current_user.id)  # ユーザーIDも追加
  end
end
