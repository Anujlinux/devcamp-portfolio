module ApplicationHelper
	def login_helper
		if current_user.is_a?(GuestUser)
        	(link_to "Log In", new_user_session_path) + "<br />".html_safe + 
        	(link_to "Register", new_user_registration_path)
        else
        	link_to "Logout", destroy_user_session_path, method: :delete
        end 
	end

	def source_helper(layout_name)
		if session[:source]
			greeting = "Thanks for visiting me from #{session[:source]} and you are at #{layout_name} layout"
			content_tag(:p, greeting, class:"source-greeting")
		end
	end

	def copyright_generator
		AnujViewTool::Renderer.copyright 'Anuj Mohatkar', 'Thank you for visiting me.'
	end
end
