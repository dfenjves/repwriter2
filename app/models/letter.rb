class Letter < ActiveRecord::Base

  def salutation(representative)
    if representative["title"] == "sen"
      "Dear Senator #{representative['last_name']},"
    elsif representative["title"] == "rep" && representative["gender"] == "F"
      "Dear Congresswoman #{representative['last_name']},"
    else
      "Dear Congressman #{representative['last_name']},"
    end    
  end

  def recipient_address(representative)
    "The Honorable #{representative['first_name']} #{representative['last_name']}
     #{representative['office']}
     Washington, DC 20510"
  end

  def sender_full_address
    "#{self.sender_name}
    #{self.sender_email}
    #{self.sender_address}
    #{self.sender_city}, #{self.sender_state} #{self.sender_zip}    "
  end

end
