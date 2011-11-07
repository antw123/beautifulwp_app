class Showcase < ActiveRecord::Base
  
  attr_accessible :title, :author, :features, :related, :price, :description
  
  belongs_to :user
  
  validates :title, :presence => true
  validates :author, :presence => true
  validates :features, :presence => true
  #validates :related, :presence => true
  validates :price, :presence => true
  validates :description, :presence => true

  
  default_scope :order => 'showcases.created_at DESC'
end

# == Schema Information
#
# Table name: showcases
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  author      :string(255)
#  features    :text
#  related     :text
#  price       :decimal(8, 2)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

