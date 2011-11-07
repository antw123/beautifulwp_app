class AddSiteUrlToShowcases < ActiveRecord::Migration
  def self.up
    add_column :showcases, :site_url, :string
  end

  def self.down
    remove_column :showcases, :site_url
  end
end
