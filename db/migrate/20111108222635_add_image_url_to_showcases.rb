class AddImageUrlToShowcases < ActiveRecord::Migration
  def self.up
    add_column :showcases, :image_url, :string
  end

  def self.down
    remove_column :showcases, :image_url
  end
end
