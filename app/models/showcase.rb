class Showcase < ActiveRecord::Base
  
  attr_accessible :title, :author, :feature1, :feature2, :feature3, :feature4, 
                                   :price, :description, 
                                   :site, :site_url, :image_url, :image, :remote_image_url, :tag_list
  
  belongs_to :user
  acts_as_taggable
  mount_uploader :image, ImageUploader
  
  searchable do
    text :title, :author, :feature1, :feature2, :feature3, :feature4, :description, :tag_list, :site
  end
  
  
  validates :title, :author, :feature1, :feature2, 
            :feature3, :feature3, :feature4, :price,
            :description, :site, :site_url, :presence => true
  
  #validates :related, :presence => true

  default_scope :order => 'showcases.created_at DESC'
  
  def to_param
    "#{id}-#{title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')}-by-#{author.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')}"
  end
    
end


# == Schema Information
#
# Table name: showcases
#
#  id           :integer         not null, primary key
#  title        :string(255)
#  author       :string(255)
#  feature1     :string(255)
#  feature2     :string(255)
#  feature3     :string(255)
#  feature4     :string(255)
#  related1     :string(255)
#  related2     :string(255)
#  related3     :string(255)
#  related4     :string(255)
#  related_url1 :string(255)
#  related_url2 :string(255)
#  related_url3 :string(255)
#  related_url4 :string(255)
#  price        :string(255)
#  description  :text
#  created_at   :datetime
#  updated_at   :datetime
#  user_id      :integer
#  site         :string(255)
#  site_url     :string(255)
#  image        :string(255)
#  image_url    :string(255)
#

