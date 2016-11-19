class TweetsController <  ApplicationController
 before_action :get_tweet, only: [ :edit, :update, :destroy ]
 before_action :check_auth, only: [ :edit, :update, :destroy ]
 def index
  if params[:name]
   @zombie = Zombie.where(name: params[:name]).first
   @tweets = @zombie.tweets
  else 
   @tweets = Tweet.all
  end
  respond_to do |format|
   format.html # index.html.erb
   format.xml { render xml: @tweets }
   format.json { render json: @tweets }
  end
 end
 def get_tweet
  @tweet = Tweet.find(params[:id])
 end

 def check_auth
  if session[:zombie_id] != @tweet.zombie_id
     flash[:notice] = "Sorry, you can't edit this tweet"
     redirect_to tweets_path
  end
 end
 def destroy

 end
 def edit
  @tweet = Tweet.find(params[:id])
  if session[:zonbie_id] != @tweet.zombie_id
   flash[:notice] = "Sorry, you can't edit this tweet"
   redirect_to(tweets_path)
  end
 end
  #render action: 'status' untuk ngelempar jika orang buka show dilempar ke status.html.erb
end
