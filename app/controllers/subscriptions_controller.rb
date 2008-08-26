require 'feed_tools'
class SubscriptionsController < ApplicationController
  
  before_filter :login_required
  before_filter :load_subscription
  
  def index
    @subscriptions = current_user.subscriptions
  end
  
  def new
    @subscription = Subscription.new
  end
  
  def create
    begin
      @feed = Feed.ensure_feed(params[:feed])
    rescue
      flash[:error] = "Could not add the supplied feed."
      send(:new) and render :action => "new" and return
    end
    @subscription = current_user.subscriptions.build(:feed => @feed)
    if @subscription.save
      flash[:notice] = "Subscription Added"
      redirect_to subscription_path(@subscription) and return
    end
    render :action => "new"
  end

  def show
  end
  
  private 

  def load_subscription
    @subscription = Subscription.find(params[:id]) if params[:id]
  end
  
end
