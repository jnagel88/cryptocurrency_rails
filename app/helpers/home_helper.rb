module HomeHelper



  def coin_name
    if @coin_list.include?(@symbol)
      @coins.each do |coin|
        if @symbol.include?(coin['symbol'])
         return "#{coin['name']} (#{coin['symbol']})"
        end
      end
    else
      "Invalid"
    end
  end
end
