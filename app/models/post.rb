class Post < ActiveRecord::Base

	belongs_to :static_page

	default_scope -> { order('created_at DESC') }


	validates_presence_of :body, :title, :static_page_id
	has_attached_file :photo, styles: {large: "600x600>", medium: "300x300>", thumb: "150x150#"}
	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

	end

