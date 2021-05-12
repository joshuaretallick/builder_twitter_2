class UsersController < ApplicationController
  def my_tweets
    @user = current_user
  end
end
