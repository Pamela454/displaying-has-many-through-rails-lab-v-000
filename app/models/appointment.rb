class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def datetime_convert(d)
    self.appointment_datetime.strftime(%A, %d %b %Y %l:%M %p)
  end
end
