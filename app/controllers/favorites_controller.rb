class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.micropost(micropost)
    flash[:success] = 'micropostをお気に入り登録しました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.nonmicropost(micropost)
    flash[:success] = 'micropostのお気に入りを解除しました。'
    redirect_back(fallback_location: root_path)
  end
end
