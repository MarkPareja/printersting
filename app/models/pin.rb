class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image,
		:storage => :dropbox,
   		:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    	:styles => { :medium => "300x300>", :thumb => "100x100>" }
end
