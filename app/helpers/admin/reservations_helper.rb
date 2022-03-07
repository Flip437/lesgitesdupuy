module Admin::ReservationsHelper
  def start_date_color(date)
    return date - Date.today > 0 ? "color:green;" : "color:red;"
  end
end
