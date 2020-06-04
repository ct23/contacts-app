class Contact < ApplicationRecord
  def friendly_updated_at
    return updated_at.strftime("%B %e, %Y, %l:%M %p")    
  end
  def full_name
    full_name = ""
    if middle_name
      return first_name + " " + middle_name + " " + last_name
    else
      return first_name + " " + last_name
    end
  end
  def japanify
    "+81 " + phone_number
  end
end
