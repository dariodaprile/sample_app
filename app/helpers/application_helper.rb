module ApplicationHelper

# Return the full title per page basis

  def full_title(page_title)
    base_title= 'Darios site'
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
