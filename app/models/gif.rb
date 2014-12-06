class Gif < ActiveRecord::Base
  attr_accessible :gif_image
  has_attached_file :image, :default_url => "/images/missing.gif" 
end
