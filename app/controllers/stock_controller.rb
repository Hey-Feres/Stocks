class StockController < ApplicationController
  #before_action :set_stock, only: [:show]
  def show
  	@stocks = StockQuote::Stock.quote("aapl, tsla, sbux, nke, cnk, mcd, amzn, fb, msft")  	
  end

  private

  #def set_stock
  	#@stock = Stock.find(params[:stock])
  #end
end
