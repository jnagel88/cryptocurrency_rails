class Crypto < ApplicationRecord
  belongs_to :user

  def symbol=(value)
    write_attribute(:symbol, value.upcase)
  end

end
