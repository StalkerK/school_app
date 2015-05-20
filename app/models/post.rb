class Post < ActiveRecord::Base

	belongs_to :static_page

	default_scope -> { order('created_at DESC') }
	
	validates_presence_of :body, :title, :static_page_id

	end
