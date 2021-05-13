class UsersController < ApplicationController

  def my_tweets
    @tracked_tweets = current_user.tweets
  end

  def my_friends
    @friends = current_user.friends
  end

  def search
    render json: params[:friend] 
  end

end
