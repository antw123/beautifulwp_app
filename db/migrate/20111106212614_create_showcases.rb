class CreateShowcases < ActiveRecord::Migration
  def self.up
    create_table :showcases do |t|
      t.string :title
      t.string :author
      t.string :feature1
      t.string :feature2
      t.string :feature3
      t.string :feature4
      t.string :related1
      t.string :related2
      t.string :related3
      t.string :related4
      t.string :related_url1
      t.string :related_url2
      t.string :related_url3
      t.string :related_url4
      t.string :price
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :showcases
  end
end
