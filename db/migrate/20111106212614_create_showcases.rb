class CreateShowcases < ActiveRecord::Migration
  def self.up
    create_table :showcases do |t|
      t.string :title
      t.string :author
      t.text :features
      t.text :related
      t.decimal :price, :precision => 8, :scale => 2
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :showcases
  end
end
