module DefaultPageContent
	extend ActiveSupport::Concern

	included do 
		before_action :set_page_default
	end

	def set_page_default
		@page_title = "Anuj Portfolio | My portfolio"
		@seo_keywords = "Anuj Portfolio"
	end
end