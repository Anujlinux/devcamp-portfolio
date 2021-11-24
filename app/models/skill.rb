class Skill < ApplicationRecord
	validates_presence_of :title, :precent_utilized

	include Placeholder
	after_initialize :set_defaults

	def set_defaults
		self.badge ||= Placeholder.image_generator(height: '250', width: '250')
	end
end
