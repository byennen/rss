class AddUrlToFeed < ActiveRecord::Migration
  def self.up
    add_column :feeds, :url, :string
  end

  def self.down
    remove_column :feeds, :url
  end
end
