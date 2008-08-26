# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def page_title(title) 
    content_for(:page_title) do
      "<h1>#{title}</h1>"
    end
  end

  def current_date
    Time.now.strftime('%B %e, %Y')
  end

end
