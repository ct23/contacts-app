class Contact < ApplicationRecord
  def friendly_updated_at
    return updated_at.strftime("%B %e, %Y, %l:%M %p")    
  end
  def full_name
    return first_name + " " + last_name
  end
  def japanify
    "+81 " + phone_number
  end
end
