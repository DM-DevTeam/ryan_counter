class Counter < ActiveRecord::Base

  def self.last_said
    last.created_at
  end

  def self.days_since_last_mess_up
    (Date.today - last_said.to_date).to_i
  end

end
