class Feed < ActiveRecord::Base
  
  has_many :subscriptions, :dependent => :destroy
  has_many :users, :through => :subscriptions
  has_many :items, :dependent => :destroy
  has_many :recent_items, :class_name => "Item", :limit => 5, :order => "created_at desc"
  
  validates_presence_of :url
  
  before_save :fetch
  
  def self.ensure_feed(params)
    feed = Feed.find_by_url(params[:url])
    unless @feed
      feed = Feed.create(params)
    end
    feed
  end
  
  def fetch
    data = FeedTools::Feed.open(url)
    self.title = data.title
    self.description = data.description
    self.link = data.link
    data.items.each do |item|
      self.items.build(:title => item.title, :description => item.description)
    end
    self.fetched_at = Time.now
  end
  
end
