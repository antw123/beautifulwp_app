class Showcase < ActiveRecord::Base
  
  attr_accessible :title, :author, :feature1, :feature2, :feature3, :feature4, 
                                   :related1, :related_url1, :related2, :related_url2, :related3, 
                                   :related_url3, :related4, :related_url4, :price, :description, 
                                   :site, :site_url, :image_url, :image, :remote_image_url
  
  belongs_to :user
  mount_uploader :image, ImageUploader
  
  
  validates :title, :presence => true
  
  validates :author, :presence => true
  
  validates :feature1, :presence => true
  
  validates :feature2, :presence => true
  
  validates :feature3, :presence => true
  
  validates :feature4, :presence => true
  
  #validates :related, :presence => true
  
  validates :price, :presence => true
  
  validates :description, :presence => true
  
  validates :site, :presence => true
  
  validates :site_url, :presence => true

  default_scope :order => 'showcases.created_at DESC'
  
  def to_param
    "#{id}-#{title.downcase}"
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

