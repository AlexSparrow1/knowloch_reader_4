module ApplicationHelper
  
  def title
    base_title = "Knowloch Reader"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("logo.png", :alt => "Knowloch Reader", :class => "round")
  end
end
