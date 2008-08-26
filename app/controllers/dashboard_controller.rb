class DashboardController < ApplicationController
  
  def index
    @feeds = Feed.find(:all, :order => "created_at desc", :limit => 5)
  end
  
end
