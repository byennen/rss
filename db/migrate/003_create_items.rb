class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.column :feed_id, :integer
      t.column :title, :string
      t.column :link, :string
      t.column :description, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
