class HomeController < ApplicationController
  require 'news-api'
  def index
	@stocks = StockQuote::Stock.quote("aapl, tsla, sbux, nke, cnk, mcd, amzn, fb, msft")

  	request = HTTParty.get("https://newsapi.org/v2/top-headlines?country=br&category=business&apiKey=dbd8a962d3004ce993c040c8a3f23ff6")
  	@articles = request['articles']
  end
end

#x = HTTParty.get("https://cloud-sse.iexapis.com/stable/news-stream\?symbols\=aapl\&token\=pk_8f2be937bfe54f46b6de402e11a4eff7")

