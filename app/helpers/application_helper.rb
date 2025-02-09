module ApplicationHelper
  def toggle_direction(column, current_direction)
    if column == params[:sort]
      current_direction == "asc" ? "desc" : "asc"
    else
      "asc"
    end
  end
end
