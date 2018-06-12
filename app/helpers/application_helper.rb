module ApplicationHelper

  def pw_length password_length
    "#{password_length} characters minimum" if password_length
  end
end
