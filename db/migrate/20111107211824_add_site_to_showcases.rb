class AddSiteToShowcases < ActiveRecord::Migration
  def self.up
    add_column :showcases, :site, :string
  end

  def self.down
    remove_column :showcases, :site
  end
end
