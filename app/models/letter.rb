class Letter < ActiveRecord::Base

  def salutation(representative)
    if representative["title"]
      if representative["title"].include?("Sen")
        "Dear Senator #{representative['last_name']},"
      elsif representative["title"] == "Rep" && representative["gender"] == "F"
        "Dear Congresswoman #{representative['last_name']},"
      else
        "Dear Congressman #{representative['last_name']},"
      end
    else
      if representative['chamber'] == "lower"
        "Dear Representative #{representative['last_name']},"
      else
        "Dear Senator #{representative['last_name']}"
      end
    end
  end 

  def recipient_city_state_zip(representative)
    if representative['title']
      "Washington, DC 20510"
    else
      representative['offices'][0]['address'].split("\n").last
    end
  end

  def recipient_address(representative)
    if representative['title']
      representative['office']
    else
      representative['offices'][0]['address'].split("\n")[0]
    end
  end

  def recipient_full_address(representative)
    "The Honorable #{representative['first_name']} #{representative['last_name']}
     #{recipient_address(representative)}
     #{recipient_city_state_zip(representative)}
     "
  end

  def sender_full_address
    "#{self.sender_address}
    #{self.sender_city}, #{self.sender_state} #{self.sender_zip}    "
  end


end
