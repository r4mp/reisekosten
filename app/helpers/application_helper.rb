module ApplicationHelper

	def true_false_image boolean
	  image_tag("#{boolean}.png", :size => "16x16", :alt => boolean)
	end

end
