module ApplicationHelper

  def pw_length password_length
    "#{password_length} characters minimum" if password_length
  end

  def active? path
    "active" if current_page? path
  end
end
