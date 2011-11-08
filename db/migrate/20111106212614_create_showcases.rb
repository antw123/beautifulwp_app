class CreateShowcases < ActiveRecord::Migration
  def self.up
    create_table :showcases do |t|
      t.string :title
      t.string :author
      t.text :features
      t.text :related
      t.string :price
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :showcases
  end
end
