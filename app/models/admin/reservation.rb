class Admin::Reservation < ApplicationRecord
  belongs_to :bedroom


  validates :start_date, :end_date, presence: true#, availability: true
  validate :end_date_after_start_date, :room_available

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
 end



  def room_available
    reservations = Admin::Reservation.where(bedroom_id: self.bedroom_id).where.not(id: self.id)
    date_ranges = reservations.map { |b| b.start_date..b.end_date }
    reservations_start_dates = reservations.pluck(:start_date)

    date_ranges.each do |range|
      if range.include?(self.start_date) or range.include?(self.end_date)
        # raise
        self.errors.add(:base, :room_not_available, message: "room not available")
      elsif !range.include? self.start_date and !range.include? self.end_date
        reservations_start_dates.each do |resa_start_date|
          if resa_start_date.between?(self.start_date, self.end_date)
            # raise+
            errors.add(:base, :room_not_available_betwwen_reservation_dates, message: "There is a reservation between start date and end date")
          end
        end
      end
      # raise
    end
  end

end
