class Idea < ActiveRecord::Base
  attr_accessible :description, :name, :picture, :tag_list
  acts_as_taggable
  
  has_many :comments
  
  mount_uploader :picture, PictureUploader
end
