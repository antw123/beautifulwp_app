class AddImageToShowcases < ActiveRecord::Migration
  def self.up
    add_column :showcases, :image, :string
  end

  def self.down
    remove_column :showcases, :image
  end
end
