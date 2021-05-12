class UsersController < ApplicationController

  def my_tweets
    @user = current_user
  end

  def my_friends
    @friends = current_user.friends
  end
end
