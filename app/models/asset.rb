class Asset < ActiveRecord::Base
  # attr_accessible :title, :body
	attr_accessible :asset  
  has_attached_file :asset												
end
