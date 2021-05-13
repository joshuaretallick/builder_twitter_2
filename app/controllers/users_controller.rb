class UsersController < ApplicationController

  def my_tweets
    @tracked_tweets = current_user.tweets
  end

end
