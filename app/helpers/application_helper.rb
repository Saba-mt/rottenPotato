module ApplicationHelper
  # Toggles sorting direction between ascending and descending
  def toggle_direction(column, current_direction)
    if column == params[:sort]
      current_direction == "asc" ? "desc" : "asc"
    else
      "asc"
    end
  end

  # CSS class for highlighting the sorted column
  def sorted_column_class(column)
    column == params[:sort] ? "sorted-#{params[:direction]}" : ""
  end

  # Sorting indicator (▲ for ascending, ▼ for descending)
  def sort_indicator(column)
    return "" unless column == params[:sort]

    params[:direction] == "asc" ? "▲" : "▼"
  end
end
