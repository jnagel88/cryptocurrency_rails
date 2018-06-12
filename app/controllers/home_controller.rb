class HomeController < ApplicationController
before_action :api_call, only:[:index, :lookup]

  def index
    @page_results = @coins.paginate(params[:page], 20)
  end

  def lookup
    @symbol = params[:sym]
    @symbol.upcase! if @symbol
    @symbol = "no coin entered" if @symbol == ''
  end

  private

    def api_call
      require 'net/http'
      require 'json'

      @url = 'https://api.coinmarketcap.com/v1/ticker/'
      @uri = URI(@url)
      @response = Net::HTTP.get(@uri)
      @coins = JSON.parse(@response)
      @my_coins = ["BTC", "XRP", "ADA", "XLM", "STEEM" ]
    end

end
