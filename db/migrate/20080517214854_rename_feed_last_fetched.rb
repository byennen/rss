class RenameFeedLastFetched < ActiveRecord::Migration
  def self.up
    rename_column :feeds, :last_fetch, :fetched_at
  end

  def self.down
    rename_column :feeds, :fetched_at, :last_fetch
  end
end
