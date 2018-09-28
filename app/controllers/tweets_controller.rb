class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all.order("created_at DESC")
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def create
    # binding.pry
    # Tweet.create(text: tweet_params[:text],user_id:current_user.id)
    Tweet.create(text: tweet_params[:text], user_id: current_user.id)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy if tweet.user_id == current_user.id
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new
  end

  def update
    tweet = Tweet.find(params[:id])
      if tweet.user_id == current_user.id
      tweet.update(tweet_params)
      end
  end

  private
  def tweet_params
    params.permit(:text)
  end

end
