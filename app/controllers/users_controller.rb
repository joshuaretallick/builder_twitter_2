class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = current_user
    @friends = @user.friends.all
  end

  def my_tweets
    @tracked_tweets = current_user.tweets
  end

end
