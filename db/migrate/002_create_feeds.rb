class CreateFeeds < ActiveRecord::Migration
  def self.up
    create_table :feeds do |t|
      t.column :title, :string
      t.column :link, :string
      t.column :description, :string
      t.column :language, :string
      t.column :pub_date, :datetime
      t.column :generator, :string
      t.column :last_fetch, :datetime
      t.timestamps
    end
  end

  def self.down
    drop_table :feeds
  end
end
