module HomeHelper

  def number_with_del_prec value,precision
    number_with_delimiter(number_with_precision(value, precision: precision))
  end
end
