class Gif < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image 
  #validates_attachment_content_type :image, :content_type => /.*\.gif/
  do_not_validate_attachment_file_type :image
end
