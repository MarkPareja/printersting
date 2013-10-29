class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image,
		:storage => :dropbox,
   		:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    	:dropbox_options => {...},
    	:styles => { :medium => "300x300>", :thumb => "100x100>" }
end
