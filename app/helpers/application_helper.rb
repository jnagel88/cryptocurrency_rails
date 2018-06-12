module ApplicationHelper

  def pw_length password_length
    "#{password_length} characters minimum" if password_length
  end

  def active? path
    "active" if current_page? path
  end

  def number_with_del_prec value,precision
    number_with_delimiter(number_with_precision(value, precision: precision))
  end

end
