class Idea < ActiveRecord::Base
  attr_accessible :description, :name, :picture
  
  has_many :comments
  
  mount_uploader :picture, PictureUploader
end
