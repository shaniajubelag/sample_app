class StaticPagesController < ApplicationController

  def home
    #code if you want to have logged in users seeing the microposts
    #@micropost = current_user.microposts.build if logged_in?

    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end

  end

  def help
  end

  def about
  end

  def contact
  end
end