# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  # Return a title on a per-page basis.
  def title
    base_title = "Ruby on Rails App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
