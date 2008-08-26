require File.dirname(__FILE__) + '/../spec_helper'

describe Feed do
  include SpecHelpers
  
  describe "Validation" do
    
    before(:each) do
      @feed = Feed.new(valid_feed_attributes)
    end
    
    it "should be valid" do
      @feed.should be_valid
    end
  end
  

end
