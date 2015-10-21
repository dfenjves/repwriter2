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

end
