class Article < ActiveRecord::Base
	validates_presence_of :author, :heading, :body

	before_save :set_perex

	def set_perex
		self.perex = body[0..20] if perex.blank?
	end
end
